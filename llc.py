#! /usr/bin/python3

import os
from tkinter import*



class llc_window:
    def __init__(self, window):
        self.mainframe=Frame(window, highlightbackground="black", highlightthickness=2)
        self.mainframe.config(bg="black")
        self.mainframe.pack(side=TOP)

        self.label = Label(self.mainframe, text="Enter App Name")
        self.label.pack(side=LEFT)

        """container frames"""
        self.botomframe = Frame(window)
        self.botomframe.pack()
        self.eo1 = Entry(self.mainframe)
        #self.insert(0, 'value1')
        self.eo1.pack(side=RIGHT)
        #self.eo2 = Entry(self.rightframe)
        #self.eo2.pack()
    
        def executable_path():
            os.system('exec_path=$(zenity --title "Pick executable (Shell/python etc)" --file-selection) && echo $exec_path >> .selection')
        
        def icon_path():
            os.system('icon_path=$(zenity --title "Pick icon (Png/jpeg etc)" --file-selection) && echo $icon_path >> .selection2')
            
        def program():
            app_name=self.eo1.get()
            exec_path = open(".selection", "r")
            exe_path = exec_path.read()
            icon_path = open(".selection2", "r")
            ico_path = icon_path.read()
            print(exec_path)

                #Creating actual file
            #malibu_work = open(".template_llc", "rt")
            #malibu_process = open("template_desktop", "wt")
            #for each line in the input file
            #for line in malibu_work:
                    #read replace the string and write to output file
                # malibu_process.write(line.replace('', '[Desktop Entry]'))
                # malibu_process.write(line.replace('', 'Type=Application'))
                # malibu_process.write(line.replace('', 'Name=' +str(app_name)))
                # malibu_process.write(line.replace('', 'Exec=' + str(exe_path)) )
                # malibu_process.write(line.replace('', 'Icon=' + str(ico_path)) )
                # malibu_process.write(line.replace(''), "Terminal=false")
            #close input and output files
            #malibu_work.close()
            #malibu_process.close()
            #xit
            f = open("template.desktop", "a")
            f.write("[Desktop Entry] \n")
            f.write("Type=Application \n")
            f.write("Name=" +str(app_name) + "\n")
            f.write("Exec=" + str(exe_path) + "\n")
            f.write("Icon=" + str(ico_path) + "\n")
            f.write("Terminal=false \n")
            f.close()   
            os.system("chmod +x tommyclide.sh && ./tommyclide.sh")     
                        
        self.button =Button(self.botomframe, text="Choose Executable Path", command=executable_path)
        self.button.pack()
        self.exit =Button(self.botomframe, text="Choose Icon Path", command=icon_path)
        self.exit.pack()
        self.ok = Button(window, text="DONE", command=program)
        self.ok.pack()

       

root = Tk()
root.title("llc/linux launch creator")
root.configure(bg='black')
root.minsize(550,200)
d = llc_window(root)
root.mainloop()

### FUNCTIONS





















































































### SHOW ONLY ONCE DURING THE BEGINNING OF THE PROGRAM
"""
zenity --title "launcher-creator" --info --text "
INSTRUCTIONS

1. Enter app name
2. Choose Executable
3. Choose Icon
4. Type terminal true/false

                
" --width="600"
"""

