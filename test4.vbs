Set objWMIService = GetObject("winmgmts:")
Set colItems = objWMIService.ExecQuery("Select * from Win32_NetworkAdapterConfiguration Where IPEnabled = True")

For Each objItem in colItems
    For Each strIPAddress in objItem.IPAddress
        If Not IsNull(strIPAddress) Then
            WScript.Echo "IP Address: " & strIPAddress
        End If
    Next
    If Not IsNull(objItem.DNSHostName) Then
        WScript.Echo "DNS Host Name: " & objItem.DNSHostName
    End If
Next
