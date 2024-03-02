import time
import os
from rich import print
import subprocess

def clear_screen():
    """Clears the terminal screen"""
    os.system('cls' if os.name == 'nt' else 'clear')

def push_notification(message):
    """Pushes a notification using dunstify"""
    subprocess.run(["dunstify", message])

def countdown(duration,massage):
    """Performs the countdown for the given duration"""
    push_notification(f"🍅{massage} Starting") 
    start_time = time.time()
    end_time = start_time + duration * 60

    while time.time() < end_time:
       
        remaining_time = int(end_time - time.time())
        minutes = remaining_time // 60
        seconds = remaining_time % 60

        clear_screen()
        print(f"🍅{massage}\n Time remaining: {minutes:02d}:{seconds:02d}")
        time.sleep(1)

        
    clear_screen()
    print("🍅 Time's up!")
    push_notification(f"🍅 Time's up!")

def start():
    """Runs the Pomodoro timer"""
    work_duration = 50
    break_duration = 10
    rounds = 4
    for i in range(rounds):
        # Work session
        work_massage= f"Round {i+1}/{rounds}: Work session"
        countdown(work_duration,work_massage)

        # Break session
        break_message=f"Round {i+1}/{rounds}: Break"
        countdown(break_duration,break_message)


def main():
    start()

    




if __name__ == "__main__":
  main()
