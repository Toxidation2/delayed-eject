Set WMPlayerOCX7 = CreateObject("WMPlayer.OCX.7" )
Set cdromCollection = WMPlayerOCX7.cdromCollection
Set FileSystemObject = CreateObject("Scripting.FileSystemObject")
Set File = FileSystemObject.CreateTextFile("result.txt", True)
if cdromCollection.Count >= 1 then
	For Index = 0 To cdromCollection.Count - 1
		cdromCollection.Item(Index).Eject
	Next
	File.WriteLine("Successfully ejected!")
Else
   	File.WriteLine("Eject failed")
End If
File.Close