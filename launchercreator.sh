#! /bin/bash
echo "script running at ......................$0 $)hostname)"
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

read app_name

echo "Enter the execution path"

read exec_path

echo "Enter icon path"

read icon_path

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


