'Microsoft magic
    Set updateSession = CreateObject("Microsoft.Update.Session")
    Set updateSearcher = updateSession.CreateupdateSearcher()        
    Set searchResult = updateSearcher.Search("IsInstalled=0 and Type='Software'")
'End Microsoft magic

If searchResult.Updates.Count <> 0 Then 'If updates were found
    'This is where you add your code to send an E-Mail.
    'Send E-mail including a list of updates needed.

    'This is how you can list the title of each update that was found.
    'You could include the list in the body of your E-Mail.
    For i = 0 To searchResult.Updates.Count - 1
        Set update = searchResult.Updates.Item(i)
        WScript.Echo update.Title
    Next
End If