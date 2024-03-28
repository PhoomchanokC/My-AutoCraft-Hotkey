#Requires AutoHotkey v2.0
MyGui := Gui()
MakeGui(crafting){
    MyGui := Gui()
    If WinExist("autocraft")
        myGui.Destroy()
    MyGui := Gui()
    if crafting == "not running"{
        color:= "cRed"
    }
    else{
        color:= "cGreen"
    }
    MyGui.Add("Text",, "Press 0 to start crafting and press Esc to exit")
    MyGui.Add("Text",color, "Current status: " crafting)
    MyGui.show()
    sleep(100)
    Send "!{Tab}"
    sleep(100)
}
MakeGui("not running")
Esc::ExitApp
0::
{  
  
    MakeGui("running")
    loop
    {
        loop 5
        {
            Send "{F12}" 
            sleep 1000
        }
            send "{1}"
            sleep 45000
    }
return
}

