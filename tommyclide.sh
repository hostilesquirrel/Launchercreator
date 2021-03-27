#! /bin/bash

desktop_entry=$(zenity --title "Create Entry" --entry --text="Enter your app name" --width="400" --height="150")

mv template.desktop $desktop_entry.desktop
rm .selection && rm .selection2

choice=$(zenity --title "Make available in menu" --entry --text="Do you want to launch from menu [yes/no]" --width="400" --height="150")

if [ $choice == "yes" ]; then
	sudo cp $desktop_entry /bin/bash
else
    exit
fi

exit

