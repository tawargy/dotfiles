"""Moazin Script to get pray time from Api and render it in rofi(dmenu) """
import json
import os
from datetime import datetime
import requests

dirPath = os.getcwd()
json_file = os.path.join(dirPath, "moazin.json")


class Moazin:
    """Moazin class"""

    API = "http://api.aladhan.com/v1/timingsByCity"
    payload = {"country": "EG", "city": "cairo"}
    pray_time_table = {
        "day": None,
        "prayTime": {
            "Fajr": None,
            "Dhuhr": None,
            "Asr": None,
            "Maghrib": None,
            "Isha": None,
        },
    }

    def __init__(self):
        if not self.is_jsonfile():
            self.fetch_times_api()
            self.save_time_jsonfile()
            self.read_jsonfile()
            self.render_current_praytime()
            return

        current_day = datetime.now().strftime("%d")
        self.read_jsonfile()
        if current_day != self.pray_time_table["day"]:
            self.fetch_times_api()
            self.save_time_jsonfile()
            self.read_jsonfile()
            self.render_current_praytime()
            return
        else:
            self.render_current_praytime()
            return

    def fetch_times_api(self):
        """feat data from Api"""
        req = requests.get(Moazin.API, params=Moazin.payload)

        if req.status_code != 200:
            self.render_error("connection is failed")
            print("error")
            return

        if req.headers["content-type"] != "application/json":
            self.render_error("API Issue ")
            return

        data = req.json()
        times = data["data"]["timings"]
        self.formatting_time(times)

    def formatting_time(self, data):
        """receive data from fetch_times_api function and formatting this data
        and update the state"""

        self.pray_time_table["day"] = str(datetime.now().strftime("%d"))
        time_dic = self.pray_time_table["prayTime"]
        time_dic["Fajr"] = (
            datetime.strptime(data["Fajr"], "%H:%M")
            .strftime("%I:%M %p")
            .replace(" ", "")
        )
        time_dic["Dhuhr"] = (
            datetime.strptime(data["Dhuhr"], "%H:%M")
            .strftime("%I:%M %p")
            .replace(" ", "")
        )
        time_dic["Asr"] = (
            datetime.strptime(data["Asr"], "%H:%M")
            .strftime("%I:%M %p")
            .replace(" ", "")
        )
        time_dic["Maghrib"] = (
            datetime.strptime(data["Maghrib"], "%H:%M")
            .strftime("%I:%M %p")
            .replace(" ", "")
        )
        time_dic["Isha"] = (
            datetime.strptime(data["Isha"], "%H:%M")
            .strftime("%I:%M %p")
            .replace(" ", "")
        )

    def save_time_jsonfile(self):
        """save pray times from the state in json file"""
        with open(json_file, mode="w") as time_json:
            json.dump(self.pray_time_table, time_json)

    def read_jsonfile(self):
        """get pray Times from json file and update the state"""
        with open("moazin.json") as time_json:
            res = time_json.read()
            data = json.loads(res)
            self.pray_time_table = data

    def is_jsonfile(self):
        """check is json file exist"""
        is_file = os.path.isfile(json_file)
        if not is_file:
            return False

        return True

    @staticmethod
    def render_error(message):
        """render error to rofi(dmenu)"""

        stream = os.popen(f"echo {message} | rofi -dmenu -i")
        stream.read()

    def render_current_praytime(self):
        """render pray times to rofi(dmenu)"""

        pray = self.pray_time_table["prayTime"]

        script = f"""
        Title="----PrayTimes----" 
        Fajr="{pray['Fajr']}"
        Dhuhr="{pray['Dhuhr']}"
        Asr="{pray['Asr']}"
        Maghrib="{pray['Maghrib']}"
        Isha="{pray['Isha']}"

        printf "%s\n\n %s%s\n\n %s%s\n\n %s%s\n\n %s%s\n\n %s%s\n" $Title "Fajr : " $Fajr "Dhuhr : " $Dhuhr "Asr : " $Asr "Maghrib : " $Maghrib  "Isha : " $Isha | rofi -dmenu -i
        """
        os.system("bash -c '%s'" % script)


Moazin()
