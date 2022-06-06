#Include, %A_ScriptDir%\libs\msgbox2.ahk

#Include, %A_SCriptDir%\mode2.ahk


CapsLock & f11::
;  WinGet, Active_ID, ID, A
; WinGet, Active_Process, ProcessName, ahk_id %Active_ID%
; MsgBox, %ProcessName%
WinGet, OutputVar, ProcessName, A
SplitPath, OutputVar,,,, OutNameNoExt
Msgbox % OutNameNoExt
Return

; 输入 caps f12 ，就可以读取文件 并且弹框显示，特别适合记录一些软件使用笔记，比如记录快捷键的用法等 
CapsLock & f12::
 WinGet, OutputVar, ProcessName, A 
 SplitPath, OutputVar,,,, OutNameNoExt
;  Msgbox % OutNameNoExt
 x := OutNameNoExt ".txt"
;  MsgBox, %x%
 FileEncoding, UTF-8
 FileRead,sw,%x%

MsgBox2("tips", sw)

Return
