MainDir := A_MyDocuments "\BE-API"
SetWorkingDir %MainDir%  ; Ensures a consistent starting directory.
IfNotExist, %MainDir%
	FileCreateDir, %MainDir%
FileInstall, einzelteile/API.dll, %MainDir%/API.dll, 1
FileCopy, einzelteile/API.dll, %MainDir%/API.dll
#Include einzelteile/API.ahk
#Include einzelteile/UrlDownloadToVar.ahk
#Include einzelteile/getplayernumber.ahk
