; Das Entwickler-AHK
; GitHub: https://github.com/alinnert/entwickler-ahk

; Create an invisible window.
; This is used to check if Capslock is being pressed.
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
n::Send {LCtrl down}{Left}{LCtrl up}
+n::Send {LCtrl down}{LShift down}{Left}{LShift up}{LCtrl up}
m::Send {LCtrl down}{Right}{LCtrl up}
+m::Send {LCtrl down}{LShift down}{Right}{LShift up}{LCtrl up}

; Media controls
f9::Volume_Mute
f10::Volume_Down
f11::Volume_Up
r::Media_Play_Pause
e::Media_Next
w::Media_Prev
q::Media_Stop

; Browser controls, inspired by Chrome OS
1::Browser_Back
2::Browser_Forward
3::Browser_Refresh
4::Browser_Home

; Windows: Virtual Desktop
f::Send {LWin down}{LCtrl down}{Right}{LCtrl up}{LWin up}
s::Send {LWin down}{LCtrl down}{Left}{LCtrl up}{LWin up}
d::Send {LWin down}{Tab}{LWin up}

; Tab Controls
c::Send {LCtrl down}{LShift down}{Tab}{LShift up}{LCtrl up}
v::Send {LCtrl down}{Tab}{LCtrl up}

; Misc. system controls
0::PrintScreen
.::Insert
Backspace::Delete
Enter::AppsKey ; Context menu
NumpadSub::Backspace
Space::Send {Space}{Space}{Left}

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
