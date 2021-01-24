#Made fall of 2019 works efficiently.........





#! /bin/bash
echo "script running at ......................$0 $(hostname)"
#sleep 1
clear
cat << EOF

                	CREATE LAUNCHERS EASILY

 					FOLLOW THE INSTRUCTIONS

EOF
sleep 3
clear

#cat << EOF
#INSTRUCTIONS

#1. In your application folder copy the application executable (.sh .py etc)
#2. Enter the paths where you will be asked by the script
#                examples
#                Execution path: /folder/executable
#                Icon path: /folder/icon.jpeg/png/etc
#3. Does the application require a terminal /Yes or no/ type true or false (mostly false)

                ###Starting in 7 seconds###

#EOF

clear
zenity --title "launcher-creator" --info --text "
INSTRUCTIONS

1. Enter app name
2. Choose Executable
3. Choose Icon
4. Type terminal true/false

                
" --width="600"

#echo "Enter the name of the application"
#echo "e.g pycharm"
#read app_name

continue=$(zenity --title "launcher-creator" --entry --text="Do you want to continue yes/no" --width="400" --height="150")

if [ $continue = "yes" ]; then
	app_name=$(zenity --title "launcher-creator" --entry --text="Enter app name" --width="400" --height="150")

	

	#echo "Enter the execution path"
	#echo "e.g /opt/pycharm/bin/pycharm.sh"
	#read exec_path

	exec_path=$(zenity --title "Pick executable (shell/python etc)" --file-selection)





	#echo "Enter icon path"
	#echo "e.g /opt/pycharm/bin/pycharm.sh"

	#read icon_path
	icon_path=$(zenity --title "Icon path (png/jpeg/bmap)" --file-selection)

terminal_true_false=$(zenity --title "launcher-creator" --entry --text="Do you want terminal (true/false)" --width="400" --height="150")
else
	break
fi

#echo "Enter categories"
#echo "**Observe how usual applications are aligned https://specifications.freedesktop.org/menu-spec/latest/apa.html"
#echo "e.g Development;IDE;"

#read categories_dev
#categories_dev=$(zenity --title "launcher-creator" --entry --text="Enter app name" --width="400" --height="150")

#echo "Is terminal required type true/false"

#read terminal_true_false


#read malibu 
{

    echo '[Desktop Entry]' | xargs
    echo 'Version=1.0 ' | xargs
    echo 'Type=Application ' | xargs
    echo 'Name='$app_name | xargs
    echo 'Exec='$exec_path | xargs  
    echo 'Icon= '$icon_path|xargs
    echo 'Terminal'=$terminal_true_false | xargs
} >>coky.desktop


mv coky.desktop $app_name.desktop

sudo mv $app_name /usr/share/applications


