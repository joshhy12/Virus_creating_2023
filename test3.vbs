Dim objShell, objNetwork
Set objShell = WScript.CreateObject("WScript.Shell")
Set objNetwork = WScript.CreateObject("WScript.Network")

strComputer = objNetwork.ComputerName
strMessage = "This is a message from " & strComputer

objShell.Run "msg.exe * /SERVER:" & strComputer & " " & strMessage
' this is how we comment '
'in the code above we send a message to the device that connected some network '
