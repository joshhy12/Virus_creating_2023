Set objWMIService = GetObject("winmgmts:")
Set colItems = objWMIService.ExecQuery("Select * from Win32_NetworkAdapterConfiguration Where IPEnabled = True")

For Each objItem in colItems
    If Not IsNull(objItem.IPAddress) Then
        For i = LBound(objItem.IPAddress) to UBound(objItem.IPAddress)
            WScript.Echo "IP Address: " & objItem.IPAddress(i)
        Next
    End If
    If Not IsNull(objItem.DNSHostName) Then
        WScript.Echo "Device Name: " & objItem.DNSHostName
    End If
Next