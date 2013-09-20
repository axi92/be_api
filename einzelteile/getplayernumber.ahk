GetPlayerNumber(player_name)
{
	MainDir := A_MyDocuments "\BE-API"
	url := "http://ucp.black-evolution.org/api.php?style=0&player_phone=" player_name
	;~ phone_number := UrlDownloadToVar(url)
	;~ return phone_number
	
	UrlDownloadToFile, %url%, %MainDir%\number2.txt
	FileRead, number2, %MainDir%\number2.txt
	FileDelete, %MainDir%\number2.txt
	return number2
}
;Hallo