; Created by Asger Juul Brunshøj

; Modified by Edward Eldridge

; Note: Save with encoding UTF-8 with BOM if possible.
; I had issues with special characters like in ¯\_(ツ)_/¯ that wouldn't work otherwise.
; Notepad will save UTF-8 files with BOM automatically (even though it does not say so).
; Some editors however save without BOM, and then special characters look messed up in the AHK GUI.

; Write your own AHK commands in this file to be recognized by the GUI. Take inspiration from the samples provided here.

;-------------------------------------------------------------------------------
;;; SEARCH GOOGLE ;;;
;-------------------------------------------------------------------------------
if Pedersen = g%A_Space% ; Search Google
{
    gui_search_title = Search Google
    gui_search("https://www.google.com/search?num=50&safe=off&site=&source=hp&q=REPLACEME&btnG=Search&oq=&gs_l=")
}
else if Pedersen = a%A_Space% ; Search Google for AutoHotkey related stuff
{
    gui_search_title = Autohotkey Google Search
    gui_search("https://www.google.com/search?num=50&safe=off&site=&source=hp&q=autohotkey%20REPLACEME&btnG=Search&oq=&gs_l=")
} 
else if Pedersen = m%A_Space% ; Open more than one URL
{
    gui_search_title = multiple
    gui_search("https://www.google.com/search?&q=REPLACEME")
    gui_search("https://www.bing.com/search?q=REPLACEME")
    gui_search("https://duckduckgo.com/?q=REPLACEME")
}

;-------------------------------------------------------------------------------
;;; SEARCH OTHER THINGS ;;;
;-------------------------------------------------------------------------------
else if Pedersen = f%A_Space% ; Search Facebook
{
    gui_search_title = Search Facebook
    gui_search("https://www.facebook.com/search/results.php?q=REPLACEME")
}
else if Pedersen = y%A_Space% ; Search Youtube
{
    gui_search_title = Search Youtube
    gui_search("https://www.youtube.com/results?search_query=REPLACEME")
}
else if Pedersen = t%A_Space% ; Search pirateBay
{
    gui_search_title = Search PirateBay
    gui_search("https://thepiratebay.org/search/REPLACEME/0/99/0")
}
else if Pedersen = gh%A_Space% ; Open GitHub
{
    gui_search_title = Search GitHub
    gui_search("https://github.com/search?utf8=%E2%9C%93&q=REPLACEME&type=")
}
else if Pedersen = so%A_Space% ; Open GitHub
{
    gui_search_title = Search StackOverflow
    gui_search("https://stackoverflow.com/search?q=REPLACEME")
}
;-------------------------------------------------------------------------------
;;; LAUNCH WEBSITES AND PROGRAMS ;;;
;-------------------------------------------------------------------------------
else if Pedersen = / ; Go to subreddit. This is a quick way to navigate to a specific URL.
{
    gui_search_title := "/r/"
    gui_search("https://www.reddit.com/r/REPLACEME")
}
else if Pedersen = pizza ; Go to subreddit. This is a quick way to navigate to a specific URL.
{
    gui_destroy()
    run "https://www.google.com/search?q=12+min+timer&ie=utf-8&oe=utf-8&client=firefox-b-ab"
}
else if Pedersen = face ; facebook.com
{
    gui_destroy()
    run www.facebook.com
}
else if Pedersen = red ; reddit.com
{
    gui_destroy()
    run www.reddit.com
}
else if Pedersen = note ; Notepad
{
    gui_destroy()
    Run Notepad
}
else if Pedersen = cmd ; Cmder
{
    gui_destroy()
    run "C:\Users\Eddie\Documents\Windows Customization\cmder\Cmder.exe"
}

else if Pedersen = eclipse ; Eclipse
{
    gui_destroy()
    run "C:\Users\Eddie\eclipse\java-neon\eclipse\eclipse.exe"
}
else if Pedersen = steam ; Steam
{
    gui_destroy()
    run "C:\Program Files (x86)\Steam\Steam.exe"
}
else if Pedersen = snip ; Snipping tool
{
    gui_destroy()
    run "C:\WINDOWS\system32\SnippingTool.exe"
}
else if Pedersen = music ; Foobar2000
{
    gui_destroy()
    run "C:\Program Files (x86)\foobar2000\foobar2000.exe"
}
else if Pedersen = mygh ; Open my Github profile 
{
    gui_destroy() 
    run https://github.com/EddieEldridge
}
else if Pedersen = mail ; Open Hotmail inbox
{
    gui_destroy()
    run https://outlook.live.com/owa/
}
else if Pedersen = webmail ; Open college Hotmail inbox
{
    gui_destroy()
    run https://outlook.office.com/owa/
}
else if Pedersen = mes ; Opens Facebook messages
{
    gui_destroy()
    run https://www.facebook.com/messages/t/
}
else if Pedersen = racer ; Opens TypeR acer
{
    gui_destroy()
    run http://play.typeracer.com/
}
else if Pedersen = todo 
{
    gui_destroy()
    run Notepad C:\Users\Eddie\Documents\Rainmeter\Skins\Note pad\notes.txt
}
else if Pedersen = url ; Open an URL from the clipboard (naive - will try to run whatever is in the clipboard)
{
    gui_destroy()
    run %ClipBoard%
}



;-------------------------------------------------------------------------------
;;; INTERACT WITH THIS AHK SCRIPT ;;;
;-------------------------------------------------------------------------------
else if Pedersen = rel ; Reload this script
{
    gui_destroy() ; removes the GUI even when the reload fails
    Reload
}
else if Pedersen = dir ; Open the directory for this script
{
    gui_destroy()
    Run, %A_ScriptDir%
}
else if Pedersen = host ; Edit host script
{
    gui_destroy()
    run, code.exe "%A_ScriptFullPath%"
}
else if Pedersen = user ; Edit GUI user commands
{
    gui_destroy()
    run, code.exe "C:\Users\Eddie\Documents\AutoHotkeyScripts\Public-AutoHotKey-Scripts-master\GUI\UserCommands.ahk"
}


;-------------------------------------------------------------------------------
;;; TYPE RAW TEXT ;;;
;-------------------------------------------------------------------------------
else if Pedersen = @ ; Email address
{
    gui_destroy()
    Send, steadyeddie101@hotmail.co.uk
}
else if Pedersen = name ; My name
{
    gui_destroy()
    Send, Edward Eldridge
}
else if Pedersen = phone ; My phone number
{
    gui_destroy()
    SendRaw, +870974838
}
else if Pedersen = clip ; Paste clipboard content without formatting
{
    gui_destroy()
    SendRaw, %ClipBoard%
}


;-------------------------------------------------------------------------------
;;; OPEN FOLDERS ;;;
;-------------------------------------------------------------------------------
else if Pedersen = down ; Downloads
{
    gui_destroy()
    run C:\Users\%A_Username%\Downloads
}
else if Pedersen = rec ; Recycle Bin
{
    gui_destroy()
    Run ::{645FF040-5081-101B-9F08-00AA002F954E}
}


;-------------------------------------------------------------------------------
;;; MISCELLANEOUS ;;;
;-------------------------------------------------------------------------------
else if Pedersen = ping ; Ping Google
{
    gui_destroy()
    Run, cmd /K "ping www.google.com"
}
else if Pedersen = hosts ; Open hosts file in Notepad
{
    gui_destroy()
    Run C:\Program Files\Microsoft VS Code\Code.exe C:\Windows\System32\drivers\etc\hosts
}
else if Pedersen = date ; What is the date?
{
    gui_destroy()
    FormatTime, date,, LongDate
    MsgBox %date%
    date =
}
else if Pedersen = week ; Which week is it?
{
    gui_destroy()
    FormatTime, weeknumber,, YWeek
    StringTrimLeft, weeknumbertrimmed, weeknumber, 4
    if (weeknumbertrimmed = 53)
        weeknumbertrimmed := 1
    MsgBox It is currently week %weeknumbertrimmed%
    weeknumber =
    weeknumbertrimmed =
}
else if Pedersen = ? ; Tooltip with list of commands
{
    GuiControl,, Pedersen, ; Clear the input box
    Gosub, gui_commandlibrary
}

else if Pedersen = mute  ; Toggle mute
{
    gui_destroy()
    SoundSet, +1, , mute 
}

else if Pedersen = sleep ; Hibernate PC
{
    gui_destroy()
    DllCall("PowrProf\SetSuspendState", "int", 1, "int", 0, "int", 0)
}