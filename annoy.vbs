Set WMPlayerOCX = CreateObject("WMPlayer.OCX")
WMPlayerOCX.URL = WScript.Arguments.Item(0)
WMPlayerOCX.controls.play
While WMPlayerOCX.playState <> 1
	WScript.Sleep 100
Wend
WMPlayerOCX.close