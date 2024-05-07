Dim objDate
Set objDate = CreateObject("WScript.Shell")
strDate = objDate.RegRead("HKEY_CURRENT_USER\Control Panel\International\sShortDate")
strTime = objDate.RegRead("HKEY_CURRENT_USER\Control Panel\International\sTimeFormat")
MsgBox "Date: " & Date & vbNewLine & "Time: " & Time
