


CapsLock & f11::
;  WinGet, Active_ID, ID, A
; WinGet, Active_Process, ProcessName, ahk_id %Active_ID%
; MsgBox, %ProcessName%
WinGet, OutputVar, ProcessName, A
SplitPath, OutputVar,,,, OutNameNoExt
Msgbox % OutNameNoExt
Return

 
CapsLock & f12::
 WinGet, OutputVar, ProcessName, A 
 SplitPath, OutputVar,,,, OutNameNoExt
;  Msgbox % OutNameNoExt
 x := OutNameNoExt ".txt"
;  MsgBox, %x%
 FileEncoding, UTF-8
 FileRead,sw,%x%
 MsgBox, %sw%
Return



