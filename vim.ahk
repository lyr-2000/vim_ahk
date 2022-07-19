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

CapsLock & u::

Send ,^{BackSpace}
return 

CapsLock & i::
Send ,{BackSpace}
return 
CapsLock & y::
Send, +{Left}
return 
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
; RAlt::Return
; remove tooltips
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

; use win+ [ or ] => switch windows in your taskbars, windows 默认 alt + esc 比较难按，这里改一下位置
#]::Send !{ESC}
#[::Send !+{ESC}

; toggle window tops
#NumpadPgup:: 
; WinGetActiveTitle, WinTitle
; MsgBox, %WinTitle%
Winset, Alwaysontop, toggle, A
ToolTip, toggle tops
SetTimer, RmToolTip, -3500
return


; winkeys,切换虚拟桌面，简化按键
#f10::Send, ^#d
#f11::Send, ^#{Left}
#f12::Send,^#{Right}
#ESC::Send,^#{f4}










#If winActive("ahk_exe chrome.exe")
lctrl & [:: Send,^+{Tab}
lctrl & ]:: Send,^{Tab}
lctrl & q:: Send,^w


return 

#if 

; https://www.zhihu.com/question/303850876/answer/1421313587
;  直接 capslock 代替 esc
#if WinActive("ahk_exe code.exe")
~CapsLock:: 
Send ,{Esc}
Send, ^{F8}
Send, {Shift}
return
; 搜狗输入法 记得设置为 ctrl + f8 切到输入法
~Esc::
    Send, ^{F8}
    Send, {Shift}
return

#if 

#if winActive("ahk_exe goland64.exe")
CapsLock:: Send ,{ESC}
#if  

#if winActive("ahk_exe idea64.exe")
CapsLock:: Send ,{ESC}
#if  



#Include, %A_ScriptDir%\plugin.ahk



#if !WinActive("ahk_exe VirtualBoxVM.exe") &&!WinActive("ahk_exe VirtualBox.exe")
 
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

#if







;  useasfair
 