Set objWMIService = GetObject("winmgmts:")
Set colItems = objWMIService.ExecQuery("Select * from Win32_NetworkAdapterConfiguration Where IPEnabled = True")

For Each objItem in colItems
    For Each strIPAddress in objItem.IPAddress
        If Not IsNull(strIPAddress) Then
            If InStr(strIPAddress, "192.168.1.") > 0 Then
                WScript.Echo "IP Address (Router): " & strIPAddress
            End If
        End If
    Next
    If Not IsNull(objItem.DNSHostName) Then
        WScript.Echo "DNS Host Name: " & objItem.DNSHostName
    End If
Next
