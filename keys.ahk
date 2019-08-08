; Das Entwickler-AHK
; Source: https://gist.github.com/alinnert/a4f3868e10eafcfe6b4684dca3f79dfc

; Create an invisible window. This is used to check if Capslock is being pressed.
; This window gets destroyd after Capslock has been released
$*Capslock::
Gui, 99:+ToolWindow
Gui, 99:Show,NoActivate x-1 w1, Capslock Is Down
keywait, Capslock
Gui, 99:Destroy
return



#IfWinExist, Capslock Is Down
Tab::Capslock ; Toggle Capslock: [Capslock] + [Tab]

; Cursor controls
j::Left
l::Right
i::Up
k::Down
u::Home
o::End
h::PgDn
z::PgUp

; Media controls
b::Volume_Down
n::Volume_Up
m::Volume_Mute
r::Media_Play_Pause
e::Media_Next
w::Media_Prev
q::Media_Stop

; Browser controls, based on the Chrome OS keyboards
1::Browser_Back
2::Browser_Forward
3::Browser_Refresh
4::Browser_Home
0::PrintScreen

; Windows 10 Desktop controls
f::sendevent {LWin down}{LCtrl down}{Right down}{LWin up}{LCtrl up}{Right up}
s::sendevent {LWin down}{LCtrl down}{Left down}{LWin up}{LCtrl up}{Left up}
d::sendevent {LWin down}{Tab down}{Tab up}{LWin up}

; Misc. system controls
.::Insert
Backspace::Delete
Enter::AppsKey ; Context menu
NumpadSub::Backspace

; [Capslock] + Mouse actions
MButton::^v ; Copy, Cut, Paste
LButton::^c
RButton::^x
WheelUp::Send {PgUp}
WheelDown::Send {PgDn}
XButton1::Send !{Up}
#IfWinExist



; Special characters using [<] + letter
< & j:: Send {{}
< & k::Send {}}
< & u::Send {[}
< & i::Send {]}
< & g::Send {/}
< & h::Send {\}
< & n::Send {&}
< & a::Send {@}
< & s::Send {$}
< & p::Send {`%}
< & o::Send {*}
< & x::Send {×}
< & d::Send {<}
< & f::Send {>}
< & q::Send {»}
< & w::Send {«}
< & l::Send {~}
< & z::Send {⚡} ; for Google AMP
< & y::Send {λ}
< & c::Send {›}
< & v::Send {‹}
< & b::Send {``}{Space}
< & ,::Send {?}
< & .::Send {!}
< & r::Send {"}
< & e::Send {'}
< & m::Send {=}
< & ö::Send {`|}
< & 8::Send {(}
< & 9::Send {)}
< & -::Send {‒}
< & +::Send {±}
< & #::Send {•}
< & t::Send {_}
< & ß::Send {ẞ}
< & Numpad0::Send {#}
< & NumpadDot::Send {.}
< & Left::Send {←}
< & Right::Send {→}
< & Up::Send {↑}
< & Down::Send {↓}

; Send [<] if only the [<] key and nothing else is pressed
;$*<::send {Blind}{<}



^ & i::SendInput import
^ & e::SendInput export
^ & f::SendInput function
^ & c::SendInput const
^ & l::SendInput let
^ & q::SendInput require
^ & r::SendInput return
^ & x::SendInput @mixin
^ & m::SendInput @media
^ & n::SendInput @include

; Send [^] if only the [^] key and nothing else is pressed
$*^::send {Blind}{^}



; [Win] + Mouse Wheel Up => [Ctrl] + [Shift] + [Tab] (Previous tab)
#WheelUp::Send, ^+{Tab}

; [Win] + Mouse Wheel Down => [Ctrl] + [Tab] (Next tab)
#WheelDown::Send, ^{Tab}

; [Win] + Middle Mouse Button => [Ctrl] + [W] (Close tab)
#MButton::Send, ^w

; [Win] + [Shift] + Middle Mouse Button => [Ctrl] + [Shift] + [T] (Reopen recently closed tab)
#+MButton::Send, ^+t

; [Win] + Right Mouse Button => Minimize active window
#RButton::WinMinimize, A
