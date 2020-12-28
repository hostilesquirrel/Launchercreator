#Made fall of 2019 works efficiently.........





#! /bin/bash
echo "script running at ......................$0 $(hostname)"
sleep 1
clear
cat << EOF

                匚尺乇卂ㄒ乇 ㄥ卂ㄩ几匚卄乇尺丂 乇卂丂丨ㄥㄚ

        🇫‌🇴‌🇱‌🇱‌🇴‌🇼‌ 🇹‌🇭‌🇪‌ 🇮‌🇳‌🇸‌🇹‌🇷‌🇺‌🇨‌🇹‌🇮‌🇴‌🇳‌🇸‌ 🇨‌🇴‌🇵‌🇾‌🇮‌🇳‌🇬‌ 🇵‌🇦‌🇹‌🇭‌🇸‌ 🇹‌🇴‌
         🇮‌🇨‌🇴‌🇳‌🇸‌ 🇦‌🇳‌🇩‌ 🇪‌🇽‌🇪‌🇨‌🇺‌🇹‌🇦‌🇧‌🇱‌🇪‌🇸‌

EOF
sleep 3
clear

cat << EOF
🇮‌🇳‌🇸‌🇹‌🇷‌🇺‌🇨‌🇹‌🇮‌🇴‌🇳‌🇸‌

1. In your application folder copy the application executable (.sh .py etc)
2. Enter the paths where you will be asked by the script
                examples
                Execution path: /folder/executable
                Icon path: /folder/icon.jpeg/png/etc
3. Does the application require a terminal /Yes or no/ type true or false (mostly false)

                ###Starting in 7 seconds###

EOF
sleep 7
clear

echo "Enter the name of the application"
echo "e.g pycharm"

read app_name

echo "Enter the execution path"
echo "e.g /opt/pycharm/bin/pycharm.sh"

read exec_path

echo "Enter icon path"
echo "e.g /opt/pycharm/bin/pycharm.sh"

read icon_path

#echo "Enter categories"
#echo "**Observe how usual applications are aligned https://specifications.freedesktop.org/menu-spec/latest/apa.html"
#echo "e.g Development;IDE;"

#read categories_dev

echo "Is terminal required type true/false"

read terminal_true_false

#read malibu 
{

    echo ' [Desktop Entry] '
    echo ' Version=1.0 '
    echo ' Type=Application '
    echo ' Name='$app_name
    echo ' Exec= '$exec_path
    echo ' Icon= '$icon_path
    #echo ' Categories=Development;IDE; '
    echo ' Terminal= '$terminal_true_false
} >>coky.desktop


mv coky.desktop $app_name.desktop

sudo mv $app_name /usr/share/applications


