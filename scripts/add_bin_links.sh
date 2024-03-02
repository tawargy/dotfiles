#!/bin/bash



# Source directory
source_dir="$HOME/dotfiles/scripts/bin"

# Destination directory
destination_dir="$HOME/bin"

# Create destination directory if it doesn't exist
mkdir -p "$destination_dir"

# Function to create symbolic links
create_links() {
    local source_dir="$1"
    local destination_dir="$2"
    
    # Loop through each file in the source directory
    for file in "$source_dir"/*; do
        # Check if it's a regular file or a directory
        if [ -f "$file" ]; then
            # Extract the filename
            filename=$(basename "$file")
            # Create a symbolic link in the destination directory
            ln -s "$file" "$destination_dir/$filename"
            echo "Created symbolic link for $filename"
        elif [ -d "$file" ]; then
            # Recursively create symbolic links in case of directories
            create_links "$file" "$destination_dir"
        fi
    done
}

# Call the function to create symbolic links
create_links "$source_dir" "$destination_dir"
