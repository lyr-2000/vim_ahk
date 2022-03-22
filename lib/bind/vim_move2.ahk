#If Vim.IsVimGroup() and (Vim.State.IsCurrentVimMode("Vim_Normal"))
f::
Vim.State.SetMode("custom_f",0,0,0)
; Vim.Move.MoveToKey(";")
Return 

#If Vim.IsVimGroup() and (Vim.State.IsCurrentVimMode("custom_f"))
a::Vim.Move.MoveToKey("a")
b::Vim.Move.MoveToKey("b")
c::Vim.Move.MoveToKey("c")
d::Vim.Move.MoveToKey("d")
e::Vim.Move.MoveToKey("e")
f::Vim.Move.MoveToKey("f")
g::Vim.Move.MoveToKey("g")
h::Vim.Move.MoveToKey("h")
i::Vim.Move.MoveToKey("i")
j::Vim.Move.MoveToKey("j")
k::Vim.Move.MoveToKey("k")
l::Vim.Move.MoveToKey("l")
m::Vim.Move.MoveToKey("m")
n::Vim.Move.MoveToKey("n")
o::Vim.Move.MoveToKey("o")
p::Vim.Move.MoveToKey("p")
q::Vim.Move.MoveToKey("q")
r::Vim.Move.MoveToKey("r")
s::Vim.Move.MoveToKey("s")
t::Vim.Move.MoveToKey("t")
u::Vim.Move.MoveToKey("u")
v::Vim.Move.MoveToKey("v")
w::Vim.Move.MoveToKey("w")
x::Vim.Move.MoveToKey("x")
y::Vim.Move.MoveToKey("y")
z::Vim.Move.MoveToKey("z")
`;::Vim.Move.MoveToKey(";")
esc::Vim.State.SetMode("Vim_Normal")
CapsLock::Vim.State.SetMode("Vim_Normal")

1::Vim.Move.MoveToKey("1")
2::Vim.Move.MoveToKey("2")
3::Vim.Move.MoveToKey("3")
4::Vim.Move.MoveToKey("4")
5::Vim.Move.MoveToKey("5")
6::Vim.Move.MoveToKey("6")
7::Vim.Move.MoveToKey("7")
8::Vim.Move.MoveToKey("8")
9::Vim.Move.MoveToKey("9")
]::Vim.Move.MoveToKey("]")
[::Vim.Move.MoveToKey("[")
)::Vim.Move.MoveToKey(")")
(::Vim.Move.MoveToKey("(")
{::Vim.Move.MoveToKey("{")
}::Vim.Move.MoveToKey("}")
Space::Vim.Move.MoveToKey(" ")



#If




