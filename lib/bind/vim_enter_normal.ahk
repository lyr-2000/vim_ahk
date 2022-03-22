#If Vim.IsVimGroup()
SetCapsLockState, AlwaysOff      
; esc 改为 ralt 防止冲突
RAlt::Vim.State.HandleEsc()


^[::Vim.State.HandleCtrlBracket()

#If Vim.IsVimGroup() and (Vim.State.IsCurrentVimMode("Insert")) and (Vim.Conf["VimJJ"]["val"] == 1)
~j up:: ; jj: go to Normal mode.
  Input, jout, I T0.1 V L1, j
  if(ErrorLevel == "EndKey:J"){
    SendInput, {BackSpace 2}
    Vim.State.SetNormal()
  }
Return


#IF Vim.IsVimGroup() and ( Vim.State.IsCurrentVimMode("Vim_Normal") )
; capslock 设置
; ; SetCapsLockState, AlwaysOff  
; LAlt::
; Vim.State.SetMode("Insert")



LCtrl::
x := %A_CaretX% + 20
y := %A_CaretY% + 24
 
ToolTip, normal mode ,x,y
SetTimer, RmToolTip, -5000
return 

LShift::
x := %A_CaretX% + 20
y := %A_CaretY% + 24
 
ToolTip, normal mode ,x,y
SetTimer, RmToolTip, -5000
return 





#If
