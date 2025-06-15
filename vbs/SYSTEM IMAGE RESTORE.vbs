Dim MyVar, MySelection
MyVar = MsgBox("Do you want to repair Windows?", vbYesNo + vbQuestion, "System Image Restore")
Select Case MyVar
Case vbYes
    x=msgbox("Insert Windows Setup CD-DVD/USB and click ok", 0+64, "Windows")
    Dim oShell

Set oShell = CreateObject("WScript.Shell")

oShell.Run "shutdown /r /t 0"
Case vbNo
    x=msgbox("The operation was canceled by user.", 0+16, "Windows")
End Select