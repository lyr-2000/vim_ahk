

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
CapsLock & `::                                                       ;|
GetKeyState, CapsLockState, CapsLock, T                              ;|
if CapsLockState = D                                                 ;|
    SetCapsLockState, AlwaysOff                                      ;|
else                                                                 ;|
    SetCapsLockState, AlwaysOn                                       ;|
KeyWait, ``                                                          ;|
return                                                               ;|
;---------------------------------------------------------------------o

;=====================================================================o
;                         CapsLock Escaper:                          ;|
;----------------------------------o----------------------------------o
;                        CapsLock  |  {ESC}                          ;|
;----------------------------------o----------------------------------o
CapsLock::
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
CapsLock & ':: Send {End} ;用于切换中文输入法
CapsLock & lalt:: Send {Enter} ; 还没想好，这个键也不能浪费

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




findMode := 0
moveToKey(key="") {   
    
    global findMode
    if (findMode != 0 ) {
        findMode := 0
    }else {
        Return
    }

    pre := ClipboardAll
    Clipboard = 
  
    Send, +{End}
    Send ^c
    ClipWait ;等待剪切板内容
    line := Clipboard
    ; MsgBox, contetis  %line[0]%
    ;等待剪切板内容
    
    Clipboard := pre  ;恢复内容
    pre =  ;释放内存
    Send ,  {Left}
    ;读取索引
    ; MsgBox, %line%
    pos := InStr(line, key,false)
    ;find the enter key
    ed := InStr(line, Chr(13),false)
    ; sp := InStr(line, Chr(32),false)
    ; if (ed<sp) {
    ;     ed = sp 
    ; }
    
    ; MsgBox, %pos%,%ed%,%line%
    if(ed>0 and pos>=ed) {
        ; findMode := 0
        Return 
    }
    ; MsgBox, %pos%
    i := 0
    while (i<pos) {
        Send, {Right}
        i  := i+1
    }
    ; findMode := 0
    Return 
}


RmToolTip:
ToolTip,
global findMode 
findMode := 0

return 


capslock & f::
global findMode
findMode := 1
x := %A_CaretX% + 20
y := %A_CaretY% + 24
 
ToolTip, find mode,x,y
SetTimer, RmToolTip, -5000
; MsgBox, "findmode is ; on ",%findMode% ；；;  

return 

#If (findMode == 1)

a::moveToKey("a")
b::moveToKey("b")
c::moveToKey("c")
d::moveToKey("d")
e::moveToKey("e")
f::moveToKey("f")
g::moveToKey("g")
h::moveToKey("h")
i::moveToKey("i")
j::moveToKey("j")
k::moveToKey("k")
l::moveToKey("l")
m::moveToKey("m")
n::moveToKey("n")
o::moveToKey("o")
p::moveToKey("p")
q::moveToKey("q")
r::moveToKey("r")
s::moveToKey("s")
t::moveToKey("t")
u::moveToKey("u")
v::moveToKey("v")
w::moveToKey("w")
x::moveToKey("x")
y::moveToKey("y")
z::moveToKey("z")

1::moveToKey("1")
2::moveToKey("2")
3::moveToKey("3")
4::moveToKey("4")
5::moveToKey("5")
6::moveToKey("6")
7::moveToKey("7")
8::moveToKey("8")
9::moveToKey("9")
`;::moveToKey(";")


]::moveToKey("]")
[::moveToKey("[")
)::moveToKey(")")
(::moveToKey("(")
{::moveToKey("{")
}::moveToKey("}")
Space::moveToKey(" ")

.::moveToKey(".")
#If




; 禁用 ralt 键， 因为不怎么用，可以辅助 切换 vim模式,狂按 ralt不报错
RAlt::Return
RCtrl::
Return

; RCtrl & a::^#Left
; RControl & f::^#Right


; SwitchIME(dwLayout){
;     HKL:=DllCall("LoadKeyboardLayout", Str, dwLayout, UInt, 1)
;     ControlGetFocus,ctl,A
;     SendMessage,0x50,0,HKL,%ctl%,A
; }



; RShift::
; SwitchIME( 0) ; 搜狗输入法
; Return

; RemoveToolTip:
; ToolTip
; return

IME_GET(WinTitle="")
;-----------------------------------------------------------
; “获得 Input Method Editors 的状态”
;-----------------------------------------------------------
{
    ifEqual WinTitle,,  SetEnv,WinTitle,A
    WinGet,hWnd,ID,%WinTitle%
    DefaultIMEWnd := DllCall("imm32\ImmGetDefaultIMEWnd", Uint,hWnd, Uint)
 
    DetectSave := A_DetectHiddenWindows
    DetectHiddenWindows,ON
    SendMessage 0x283, 0x005,0,,ahk_id %DefaultIMEWnd%
    DetectHiddenWindows,%DetectSave%
    Return ErrorLevel
}

 

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
rshift & 1::
v:=IME_Get()
if( v=1) {
    ;rshift 自动切回英文
    send {shift}
}
Send, {!}

Return








