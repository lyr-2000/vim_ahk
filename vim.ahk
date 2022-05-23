; Auto-execute section
; VimScriptPath := A_LineFile
; Vim := new VimAhk()
; Return

; #Include %A_LineFile%\..\lib\vim_ahk.ahk




;=====================================================================o
;                       CapsLock Initializer                         ;|
;---------------------------------------------------------------------o
SetCapsLockState, AlwaysOff                                          ;|
;---------------------------------------------------------------------o

;=====================================================================o
;                       CapsLock Switcher:                           ;|
;---------------------------------o-----------------------------------o
;                    CapsLock + ` | {CapsLock}                       ;|
;---------------------------------o-----------------------------------o
; RShift & CapsLock::
; GetKeyState, CapsLockState, CapsLock, T                              ;|
; if CapsLockState = D                                                 ;|
;     SetCapsLockState, AlwaysOff                                      ;|
; else                                                                 ;|
;     SetCapsLockState, AlwaysOn                                       ;|
; KeyWait, ``                                                          ;|
; return    

RCtrl & CapsLock::                                                       ;|
GetKeyState, CapsLockState, CapsLock, T                              ;|
if CapsLockState = D                                                 ;|
    SetCapsLockState, AlwaysOff                                      ;|
else                                                                 ;|
    SetCapsLockState, AlwaysOn                                       ;|
KeyWait, ``                                                          ;|
return    
; 充分发挥左右手指优势
RAlt & CapsLock::
GetKeyState, CapsLockState, CapsLock, T                              ;|
if CapsLockState = D                                                 ;|
    SetCapsLockState, AlwaysOff                                      ;|
else                                                                 ;|
    SetCapsLockState, AlwaysOn                                       ;|
KeyWait, ``                                                          ;|
return    



                                                           ;|
;---------------------------------------------------------------------o

;=====================================================================o
;                         CapsLock Escaper:                          ;|
;----------------------------------o----------------------------------o
;                        CapsLock  |  {ESC}                          ;|
;----------------------------------o----------------------------------o
$CapsLock::
SetCapsLockState, AlwaysOff  
return
;---------------------------------------------------------------------o

;=====================================================================o
;                    CapsLock Direction Navigator                    ;|
;-----------------------------------o---------------------------------o
;                      CapsLock + h |  Left                          ;|
;                      CapsLock + j |  Down                          ;|
;                      CapsLock + k |  Up                            ;|
;                      CapsLock + l |  Right                         ;|
;                      Ctrl, Alt Compatible                          ;|
;-----------------------------------o---------------------------------o
CapsLock & h::                                                       ;|
if GetKeyState("control") = 0                                        ;|
{                                                                    ;|
    if GetKeyState("shift") = 0                                        ;|
        Send, {Left}                                                 ;|
    else                                                             ;|
        Send, +{Left}                                                ;|
    return                                                           ;|
}                                                                    ;|
else {                                                               ;|
    if GetKeyState("shift") = 0                                        ;|
        Send, ^{Left}                                                ;|
    else                                                             ;|
        Send, +^{Left}                                               ;|
    return                                                           ;|
}                                                                    ;|
return                                                               ;|
;-----------------------------------o                                ;|
CapsLock & j::                                                       ;|
if GetKeyState("control") = 0                                        ;|
{                                                                    ;|
    if GetKeyState("shift") = 0                                        ;|
        Send, {Down}                                                 ;|
    else                                                             ;|
        Send, +{Down}                                                ;|
    return                                                           ;|
}                                                                    ;|
else {                                                               ;|
    if GetKeyState("shift") = 0                                        ;|
        Send, ^{Down}                                                ;|
    else                                                             ;|
        Send, +^{Down}                                               ;|
    return                                                           ;|
}                                                                    ;|
return                                                               ;|
;-----------------------------------o                                ;|
CapsLock & k::                                                       ;|
if GetKeyState("control") = 0                                        ;|
{                                                                    ;|
    if GetKeyState("shift") = 0                                        ;|
        Send, {Up}                                                   ;|
    else                                                             ;|
        Send, +{Up}                                                  ;|
    return                                                           ;|
}                                                                    ;|
else {                                                               ;|
    if GetKeyState("shift") = 0                                        ;|
        Send, ^{Up}                                                  ;|
    else                                                             ;|
        Send, +^{Up}                                                 ;|
    return                                                           ;|
}                                                                    ;|
return                                                               ;|
;-----------------------------------o                                ;|
CapsLock & l::                                                       ;|
if GetKeyState("control") = 0                                        ;|
{                                                                    ;|
    if GetKeyState("shift") = 0                                        ;|
        Send, {Right}                                                ;|
    else                                                             ;|
        Send, +{Right}                                               ;|
    return                                                           ;|
}                                                                    ;|
else {                                                               ;|
    if GetKeyState("shift") = 0                                        ;|
        Send, ^{Right}                                               ;|
    else                                                             ;|
        Send, +^{Right}                                              ;|
    return                                                           ;|
}                                                                    ;|
return                                                               ;|
;---------------------------------------------------------------------o


;-----------------------------------o---------------------------------o
; CapsLock & w:: Send, ^{Right}    和 vim差不多，但是后面要 wasd作为方向键，这里就不这样做了       ;|
CapsLock & b:: Send, ^{Left}                                         ;|
CapsLock & space:: Send, ^{Right}   
CapsLock & w:: Send, ^{Right}   
CapsLock & o:: Send, {End}{Enter}

CapsLock & a::
;尾部追加
Send, {End}  
return 
; vim 的g移动
CapsLock & g::
if GetKeyState("shift") = 0  
{
    Send, ^{Home}
}
else {
    Send, ^{End}
}
return 

CapsLock & e::
if GetKeyState("shift") = 0
{
    Send, ^{Right}^{Right}{Left}
    
    ;+{Left}
}else{
   Send, +^{Right}+^{Right}
}

return 
;---------------------------------------------------------------------o
;=====================================================================o
;                     CapsLock Home/End Navigator                    ;|
;-----------------------------------o---------------------------------o
;                      CapsLock + i |  Home                          ;|
;                      CapsLock + o |  End                           ;|
;                      Ctrl, Alt Compatible                          ;|
;-----------------------------------o---------------------------------o
CapsLock & [::                                                       ;|
if GetKeyState("control") = 0                                        ;|
{                                                                    ;|
    if GetKeyState("shift") = 0                                        ;|
        Send, {Home}                                                 ;|
    else                                                             ;|
        Send, +{Home}                                                ;|
    return                                                           ;|
}                                                                    ;|
else {                                                               ;|
    if GetKeyState("shift") = 0                                        ;|
        Send, ^{Home}                                                ;|
    else                                                             ;|
        Send, +^{Home}                                               ;|
    return                                                           ;|
}                                                                    ;|
return                                                               ;|
;-----------------------------------o                                ;|
CapsLock & ]::                                                       ;|
if GetKeyState("control") = 0                                        ;|
{                                                                    ;|
    if GetKeyState("shift") = 0                                        ;|
        Send, {End}                                                  ;|
    else                                                             ;|
        Send, +{End}                                                 ;|
    return                                                           ;|
}                                                                    ;|
else {                                                               ;|
    if GetKeyState("shift") = 0                                        ;|
        Send, ^{End}                                                 ;|
    else                                                             ;|
        Send, +^{End}                                                ;|
    return                                                           ;|
}                                                                    ;|
return                                                               ;|
;---------------------------------------------------------------------o

;=====================================================================o
;                      CapsLock Page Navigator                       ;|
;-----------------------------------o---------------------------------o
;                      CapsLock + - |  PageUp                        ;|
;                      CapsLock + + |  PageDown                      ;|
;                      Ctrl, shift Compatible                          ;|
;-----------------------------------o---------------------------------o
CapsLock & -::                                                       ;|
if GetKeyState("control") = 0                                        ;|
{                                                                    ;|
    if GetKeyState("shift") = 0                                        ;|
        Send, {PgUp}                                                 ;|
    else                                                             ;|
        Send, +{PgUp}                                                ;|
    return                                                           ;|
}                                                                    ;|
else {                                                               ;|
    if GetKeyState("shift") = 0                                        ;|
        Send, ^{PgUp}                                                ;|
    else                                                             ;|
        Send, +^{PgUp}                                               ;|
    return                                                           ;|
}                                                                    ;|
return                                                               ;|
;-----------------------------------o                                ;|
CapsLock & +::                                                       ;|
if GetKeyState("control") = 0                                        ;|
{                                                                    ;|
    if GetKeyState("shift") = 0                                        ;|
        Send, {PgDn}                                                 ;|
    else                                                             ;|
        Send, +{PgDn}                                                ;|
    return                                                           ;|
}                                                                    ;|
else {                                                               ;|
    if GetKeyState("shift") = 0                                        ;|
        Send, ^{PgDn}                                                ;|
    else                                                             ;|
        Send, +^{PgDn}                                               ;|
    return                                                           ;|
}                                                                    ;|
return                                                               ;|
;---------------------------------------------------------------------o
CapsLock & n::                                                       ;|
if GetKeyState("control") = 0                                        ;|
{                                                                    ;|
    if GetKeyState("shift") = 0                                        ;|
        Send, {PgUp}                                                 ;|
    else                                                             ;|
        Send, +{PgUp}                                                ;|
    return                                                           ;|
}                                                                    ;|
else {                                                               ;|
    if GetKeyState("shift") = 0                                        ;|
        Send, ^{PgUp}                                                ;|
    else                                                             ;|
        Send, +^{PgUp}                                               ;|
    return                                                           ;|
}                                                                    ;|
return   

CapsLock & m::                                                       ;|
if GetKeyState("control") = 0                                        ;|
{                                                                    ;|
    if GetKeyState("shift") = 0                                        ;|
        Send, {PgDn}                                                 ;|
    else                                                             ;|
        Send, +{PgDn}                                                ;|
    return                                                           ;|
}                                                                    ;|
else {                                                               ;|
    if GetKeyState("shift") = 0                                        ;|
        Send, ^{PgDn}                                                ;|
    else                                                             ;|
        Send, +^{PgDn}                                               ;|
    return                                                           ;|
}                                                                    ;|
return  

;直接跳到行尾
CapsLock & f::
Send, ^{End} 
Return 



; 翻页
; CapsLock & -:: Send {Blind}{PgUp}
; CapsLock & =:: Send {Blind}{PgDn}
; 跳到行首行尾
; CapsLock & [:: Send {Home} 
; CapsLock & ]:: Send {End} 
; 这里 充分 利用 wasd 实现上下切换
CapsLock & Down:: Send ^{Down}{Down}
CapsLock & Up:: Send ^{Up}{Up}
; CapsLock & q:: Send ^{Up}{Up}
CapsLock & Right:: Send ^{Right}
CapsLock & Left:: Send ^{Left}


CapsLock & 0:: Send ^{Down}{Down}
CapsLock & 9:: Send ^{Up}{Up}
CapsLock & `;:: Send {Home}
; capsLock + backspace ,直接删除一个单词，写代码的时候经常是删除单词，而不是字符
CapsLock & BackSpace:: Send ^{BackSpace}
;  

; 整行缩进快捷键 , 模仿 vim 的 shift + >
CapsLock &  >:: Send +{Home}{Home}+{End}{Tab}{Right}
CapsLock &  <:: Send +{Home}{Home}+{End}+{Tab}{Right}
; 切换输入法
; CapsLock & ':: Send {End} ;用于切换中文输入法

; CapsLock & lalt:: Send {Enter} ; 还没想好，这个键也不能浪费

;删除一行 ,shift + end  ,ctrl+x
CapsLock & d:: Send {Home}{Home}+{End}^x

CapsLock & x:: Send {Delete}

;下面的东西没用，浪费内存
; ; 快捷取色器
; ; 快捷键：Windows + c
; #c::
; ; 获取鼠标所在位置的坐标
; MouseGetPos , x , y
; ; 获取鼠标所在位置的色值
; PixelGetColor, color , x , y , rgb
; ; 将色值字符串转换为小写
; StringLower , colorLower , color
; ; 将小写色值保存到剪贴板
; colorLower := SubStr(colorLower,3)
; Clipboard = #%colorLower%
; ; 弹出气泡提示取色成功
; ToolTip , 色值: #%colorLower%`n已复制到剪贴板
; Sleep , 2000
; ; 2秒后关闭气泡提示
; ToolTip
; ; 方法结束，返回
; Return

; CapsLock & Numpad8::    MouseMove, 0, -20, 0, R                           ;|
; CapsLock & Numpad2::  MouseMove, 0, 20, 0, R                            ;|
; CapsLock & Numpad4::  MouseMove, -20, 0, 0, R                           ;|
; CapsLock & Numpad6:: MouseMove, 20, 0, 0, R
; CapsLock & Numpad5::  MouseClick, Left, %A_CaretX%, %A_CaretY%,,0
; CapsLock & Numpad7::  MouseClick, Left, %A_CaretX%, %A_CaretY%,,0
; CapsLock & Numpad9::  MouseClick, Right, %A_CaretX%, %A_CaretY%,,0




; findMode := 0
; moveToKey(key="") {   
    
;     global findMode
;     if (findMode != 0 ) {
;         findMode := 0
;     }else {
;         Return
;     }

;     pre := ClipboardAll
;     Clipboard = 
  
;     Send, +{End}
;     Send ^c
;     ClipWait ;等待剪切板内容
;     line := Clipboard
;     ; MsgBox, contetis  %line[0]%
;     ;等待剪切板内容
    
;     Clipboard := pre  ;恢复内容
;     pre =  ;释放内存
;     Send ,  {Left}
;     ;读取索引
;     ; MsgBox, %line%
;     pos := InStr(line, key,false)
;     ;find the enter key
;     ed := InStr(line, Chr(13),false)
;     ; sp := InStr(line, Chr(32),false)
;     ; if (ed<sp) {
;     ;     ed = sp 
;     ; }
    
;     ; MsgBox, %pos%,%ed%,%line%
;     if(ed>0 and pos>=ed) {
;         ; findMode := 0
;         Return 
;     }
;     ; MsgBox, %pos%
;     i := 0
;     while (i<pos) {
;         Send, {Right}
;         i  := i+1
;     }
;     ; findMode := 0
;     Return 
; }





; 禁用 ralt 键， 因为不怎么用，可以辅助 切换 vim模式, lalt一个就够
; RAlt::Return

RmToolTip:
ToolTip,
return 
 
NumLock::
x := %A_CaretX% + 20
y := %A_CaretY% + 24
if (GetKeyState("NumLock", "T")) {
  ToolTip, ins mode,x,y ; insert mode 提示
  SetNumLockState, Off
}else {
   ToolTip, num mode,x,y ;num mode 提示
   SetNumLockState, On
}
SetTimer, RmToolTip, -5000
; MsgBox, "findmode is ; on ",%findMode% ；；;  
return

; use win+ [ or ] => switch windows in your taskbars
#]::Send !{ESC}
#[::Send !+{ESC}


#If winActive("ahk_exe chrome.exe")
lctrl & [:: Send,^+{Tab}
lctrl & ]:: Send,^{Tab}
lctrl & q:: Send,^w


return 

#if 



     


; RemoveToolTip:
; ToolTip
; return

; IME_GET(WinTitle="")
; ;-----------------------------------------------------------
; ; “获得 Input Method Editors 的状态”
; ;-----------------------------------------------------------
; {
;     ifEqual WinTitle,,  SetEnv,WinTitle,A
;     WinGet,hWnd,ID,%WinTitle%
;     DefaultIMEWnd := DllCall("imm32\ImmGetDefaultIMEWnd", Uint,hWnd, Uint)
 
;     DetectSave := A_DetectHiddenWindows
;     DetectHiddenWindows,ON
;     SendMessage 0x283, 0x005,0,,ahk_id %DefaultIMEWnd%
;     DetectHiddenWindows,%DetectSave%
;     Return ErrorLevel
; }

 

; CN := chr(20013)
; EN := chr(33521)

; RShift::
; ; 定义 rshift 键默认输入的就是英文，如果中文，也切换回英文
; v:=IME_GET()
; if(v=0) {
;     Send, {shift}{shift}
;     ;0是英文
; }else {
;     Send, {shift}
; }

;英文是0 直接返回

; mainAction("A",CN,EN)
; Return
; 写代码的时候 经常会自动输入中文
; rshift & 1::

; Send, {!}

; Return








; #[::

; global ss 
; if (ss=="") {
;     ss := fread()

; }


; for i,e in StrSplit(ss, "`n") {
;     ; MsgBox, %i%,%e%
;     arr := strsplit(e, "|")
;     l := arr[1] 
;     r := arr[2]
;     ;( l!="" ) && ( r!="" ) &&
;     if ( l!="" ) && ( r!="" ) && ( WinActive( l ) ) && WinExist(r)   {
;         WinActivate, %r%
;         return
;     }
; }

; return


; #0::

; ; FileOpen("FileName.txt", "w").Write("New contents")
; ; FileOpen("FileName.txt", "w").Write("New contents")
; ; FileOpen("FileName.txt", "w").Write("New contents")
; ; FileOpen("FileName.txt", "w")Close()
; ; MsgBox, %A_ScriptDir%\ahk_.txt
; MultiLineInput("输入切换程序")
; ; MsgBox % MultiLineInput("输入要切换的窗口")
; return
 
; MultiLineInput(Text:="Waiting for Input") {
;     pre := fread()
;     Global MLI_Edit
   
;     Gui, Add, Edit, vMLI_Edit x2 y2 w396 r4
;     Gui, Add, Button, gMLI_OK x1 y63 w199 h30, &OK
;     Gui, Add, Button, gMLI_Cancel x200 y63 w199 h30, &Cancel

;      GuiControl,,MLI_Edit,%pre%
;     Gui, Show, h94 w400, %Text%
;     Goto, MLI_Wait
;     MLI_OK:
;         GuiControlGet, MLI_Edit
;         ; file write
;         fd := FileOpen("ahk.txt", "w")
;         fd.Write(MLI_Edit)
;         fd.Close()
;         global ss := MLI_Edit
;     MLI_Cancel:
;     GuiEscape:
;         ReturnNow := True
;     MLI_Wait:
;         While (!ReturnNow)
;             Sleep, 100
;     Gui, Destroy
;     Return %MLI_Edit%
; }





; 设定激活窗口，切换 chrome 和 编辑器等，
; active chrome
; RCtrl & c::
; if WinExist("ahk_exe chrome.exe")
;         WinActivate, ahk_exe chrome.exe
; else
;         Run, chrome.exe

; return 
; ; active vscode
; RControl & v::
; if WinExist("ahk_exe code.exe")
;         WinActivate, ahk_exe code.exe 
; else
;         ; Run, code.exe
;         ToolTip, please open vscode 

; return 

; RCtrl & Space::
; if winActive("ahk_exe chrome.exe")
;         WinActivate, ahk_exe code.exe 
; else if winActive("ahk_exe code.exe")
;           WinActivate, ahk_exe chrome.exe
; return  
; SetWorkingDir, %A_ScriptDir%
; fread() {
;     ; MsgBox, "init"
; p := "ahk.txt"
; ; MsgBox, %p%
; FileRead, sw,%p%
; ; if ErrorLevel {
; ;     MsgBox, "error" %ErrorLevel%
; ; }
; ; MsgBox, %sw%
; if (sw!= "") {
;     ; MsgBox, "file not found"
;     return sw
; }
;    return "ahk_exe chrome.exe|ahk_exe code.exe`nahk_exe code.exe|ahk_exe chrome.exe"
; }
