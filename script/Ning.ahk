;====================================================
;=====Describe=======================================
;====================================================
;My Hotkey Script
;Author: Ning
;AHKVer: Alpha2.0-a153
;ScriptVer: V1.0
;Update time: 2020-07-06



;====================================================
;=====Environment Configuration======================
;====================================================
#InstallKeybdHook
#KeyHistory 50
SetNumLockState "AlwaysOn"
SetScrollLockState "AlwaysOn"
SetCapsLockState "AlwaysOff"



;====================================================
;=====Variable=======================================
;====================================================
;Builtin variable(ReadOnly)
;Only used ones are listed
;A_AhkVersion:the version of ahk

;Global variable

;Local variable
;Tips: KeyState_ScrollLock:{"0":"off", "1":"on"}
;KeyState_ScrollLock := GetKeyState("ScrollLock","T") 
;KeyState_NumLock := GetKeyState("NumLock", "T")
;KeyState_CapsLock := GetKeyState("CapsLock", "T")



;====================================================
;=====AHK Control====================================
;====================================================
;Press Alt+o to get the version of ahk
^!o::
{
    MsgBox(
        "Thanks for your use`nAuthor:Ning`nAHK_Version:`n" A_AhkVersion ,
        "Ning",
        "OC 64 4096 T3"
        )
}

;Press Ctrl+Alt+q to reload this script
^!q::Reload

;Press Ctrl+Alt+h to get help
^!h::
{
    MsgBox("The help manual is being developed",
    "Help",
    "O T5"
    )
}

~j & ~f::
{
    KeyState_ScrollLock := GetKeyState("ScrollLock","T") 
    KeyState_NumLock := GetKeyState("NumLock", "T")
    KeyState_CapsLock := GetKeyState("CapsLock", "T")
    MsgBox(
        "空格编辑" KeyState_ScrollLock "`n数字键区" KeyState_NumLock "`n大小写" KeyState_CapsLock,
        "控制键状态",
        "O 64 T2"
    )
}

~f & ~j::
{
    KeyState_ScrollLock := GetKeyState("ScrollLock","T") 
    KeyState_NumLock := GetKeyState("NumLock", "T")
    KeyState_CapsLock := GetKeyState("CapsLock", "T")
    MsgBox(
        "空格编辑" KeyState_ScrollLock "`n数字键区" KeyState_NumLock "`n大小写" KeyState_CapsLock,
        "控制键状态",
        "O 64 T2"
    )
}



;====================================================
;=====Control Key Remapping==========================
;====================================================
;Switch CapsLock state
CapsLock::
{
    SetCapsLockState !GetKeyState("CapsLock", "T")
}
;Switch NumLock state
!9::
{
    SetNumLockState !GetKeyState("NumLock", "T")
}

;Switch ScrollLock state
!0::
{
    SetScrollLockState !GetKeyState("ScrollLock", "T")
}

;Double press to switch ScrollLock State
;No use
;~+::
;{
;    if (A_ThisHotkey = A_PriorHotkey && A_TimeSincePriorHotkey < 2000)
;        SetScrollLockState !GetKeyState("ScrollLock", "T")
;}



;====================================================
;======Vim control mode==============================
;====================================================
#HotIf GetKeyState("Scrolllock", "T")
$Space::Space
Space & a::Send "{Ctrl down}a{Ctrl up}"
Space & c::Send "{Ctrl down}c{Ctrl up}"
Space & v::Send "{Ctrl down}v{Ctrl up}"
Space & x::Send "{Ctrl down}x{Ctrl up}"
Space & n::Send "{Enter down}{Enter up}"
Space & h::Send "{left down}{left up}"
Space & j::Send "{down down}{down up}"
Space & k::Send "{up down}{up up}"
Space & l::Send "{right down}{right up}"
Space & u::Send "{home down}{home up}"
Space & i::Send "{end down}{end up}"
Space & `::Send "~"
Space & 1::Send "!"
Space & 2::Send "@"
Space & 3::Send "#"
Space & 4::Send "$"
Space & 5::Send "%"
Space & 6::Send "^"
Space & 7::Send "&"
Space & 8::Send "*"
Space & 9::Send "("
Space & 0::Send ")"
Space & -::Send "_"
Space & =::Send "+"
Space & [::Send "{"
Space & ]::Send "}"
Space & \::Send "|"
Space & o::Send "{BackSpace down}{BackSpace up}"
Space & d::Send "{Del down}{Del up}"
Space & t::run "C:\Program Files\WindowsApps\Microsoft.WindowsTerminal_1.4.3243.0_x64__8wekyb3d8bbwe\wt.exe"
Space & p::run "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe"
Space & w::run "conhost.exe"
Space & b::run "https://www.baidu.com/"
Space & e::Send "!{F4}"
Space & s::Send "{Ctrl down}s{Ctrl up}"

#HotIf !GetKeyState("NumLock", "T")
n::0
m::1
,::2
.::3
j::4
k::5
l::6
u::7
i::8
o::9



;====================================================
;====================================================
;====================================================
