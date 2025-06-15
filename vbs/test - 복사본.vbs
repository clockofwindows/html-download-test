Title = "Checking for Windows updates"
Msg = "Looking for a list of updates, So be Patient Thank you !"
Wait = "5" 'waiting 5 secondes to close the popup
Set Ws = CreateObject("Wscript.Shell")
ws.Popup Msg,wait,Title,64

Set updateSession = CreateObject("Microsoft.Update.Session")
    Set updateSearcher = updateSession.CreateupdateSearcher()        
    Set searchResult = updateSearcher.Search("IsInstalled=0 and Type='Software'")

If searchResult.Updates.Count <> 0 Then 'If updates were found
    'so with this loop shows how you can list the title of each update that was found.
    For i = 0 To searchResult.Updates.Count - 1
        Set update = searchResult.Updates.Item(i)
        ws.Popup update.Title,wait,FART,64
    Next
End If
Ws.Run "wuauclt.exe /reportnow /detectnow",1,False