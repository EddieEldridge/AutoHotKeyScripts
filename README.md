
### What it is
This is a small GUI that allows you to run any normal AutoHotkey command or block of code by typing a name for the command you want to run. 

![capture](https://user-images.githubusercontent.com/22448079/39307071-bca4bcc8-4959-11e8-8653-dd81b3bceb6f.PNG)

<h1><b>Adapted from https://github.com/plul/Public-AutoHotKey-Scripts</b></h1>

### How to use it
Install AutoHotKey from [here](https://www.autohotkey.com/)

Run the `Host.ahk` file.

This entire script is build around the `CapsLock` key.
The GUI is activated by `Alt`+`Capslock`.
Normal `CapsLock` functionality is preserved, and can be toggled by `Alt`+`CapsLock`.

When typing something in the GUI, whatever you type is matched up against the commands in `UserCommands.ahk`. These are normal AutoHotkey commands so you can and should write your own. I have supplied some sample commands to show some ideas. But it only becomes truly powerful once you customize it with commands to suit your specific needs.

##### Trying it out yourself
1. Make sure `Host.ahk` is running.
* Open the GUI with `Alt`+`CapsLock`.
* Type '?' in the command bar to see a list of current commands
