Set objShell = WScript.CreateObject("WScript.Shell")

' Shutdown the computer
objShell.Run "shutdown.exe -s -t 0"

' Restart the computer
'objShell.Run "shutdown.exe -r -t 0"
