; Visual Char/Block/Line
#If Vim.IsVimGroup() and (Vim.State.IsCurrentVimMode("Vim_Normal"))
; ToolTip, "visual mode"
v::Vim.State.SetMode("Vim_VisualChar")
^v::
  Send, ^b
  Vim.State.SetMode("Vim_VisualChar")
Return

+v::
  Vim.State.SetMode("Vim_VisualLineFirst")
  Send, {Home}+{Down}
Return

#If Vim.IsVimGroup() and (Vim.State.StrIsInCurrentVimMode("Visual"))
v::Vim.State.SetMode("Vim_Normal")
i::Vim.State.SetMode("Insert")

$u::Return
; ydc
+y::
y::
  Clipboard :=
  Send, ^c
  Send, {Right}
  if WinActive("ahk_group VimCursorSameAfterSelect"){
    Send, {Left}
  }
  ClipWait, 1
  if(Vim.State.StrIsInCurrentVimMode("Line")){
    Vim.State.SetMode("Vim_Normal", 0, 0, 1)
  }else{
    Vim.State.SetMode("Vim_Normal", 0, 0, 0)
  }
Return

d::
  Clipboard :=
  Send, ^x
  ClipWait, 1
  if(Vim.State.StrIsInCurrentVimMode("Line")){
    Vim.State.SetMode("Vim_Normal", 0, 0, 1)
  }else{
    Vim.State.SetMode("Vim_Normal", 0, 0, 0)
  }
Return

x::
  Clipboard :=
  Send, ^x
  ClipWait, 1
  if(Vim.State.StrIsInCurrentVimMode("Line")){
    Vim.State.SetMode("Vim_Normal", 0, 0, 1)
  }else{
    Vim.State.SetMode("Vim_Normal", 0, 0, 0)
  }
Return

c::
  Clipboard :=
  Send, ^x
  ClipWait, 1
  if(Vim.State.StrIsInCurrentVimMode("Line")){
    Vim.State.SetMode("Insert", 0, 0, 1)
  }else{
    Vim.State.SetMode("Insert", 0, 0, 0)
  }
Return

*::
  bak := ClipboardAll
  Clipboard :=
  Send, ^c
  ClipWait, 1
  Send, ^f
  Send, ^v!f
  clipboard := bak
  Vim.State.SetMode("Vim_Normal")
Return

 

; +h::Vim.Move.Repeat("h") ; bugfix visual mode

; +j::Vim.Move.Repeat("j") ; bugfix visual mode


; +k::Vim.Move.Repeat("k")  ; bugfix visual mode

; +l::Vim.Move.Repeat("l") ; bugfix visual mode




#If
