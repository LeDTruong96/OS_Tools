SetStoreCapsLockMode, On
SetCapsLockState AlwaysOff

#Include %A_ScriptDir%\LD4_Lib.ahk


CapsLock & D::Send {Enter}
CapsLock & S::Send {Escape}

CapsLock & a::Send {Home}
CapsLock & e::Send {End}

CapsLock & q::Send ^{BS}
CapsLock & w::Send ^{Del}

CapsLock & x::Send {HOME}{HOME}+{END}^x{Del}
CapsLock & c::Send {HOME}+{END}^c{END}

CapsLock & o::Send {End}{Enter}
CapsLock & i::Send {HOME}{Enter}{Up}

#IfWinNotActive, ahk_exe Vivaldi.exe
!w::Send {Up}
!s::Send {Down}
!a::Send {Left}
!d::Send {Right}
!r::Send {BS}
!f::Send {Del} 
!q::Send ^{Left}
!e::Send ^{Right}
#IfWinActive


#IfWinActive, ahk_exe ssn.exe
CapsLock & x::Send {HOME}{HOME}+{END}^x
#IfWinActive

#IfWinActive, ahk_exe notepad++.exe
^+D::Send !e{Down}{Down}{Down}{Down}{Down}{Down}{Down}{Down}{Down}{Down}{Down}{Right}{Down}{Enter}
#IfWinActive

LWin & 1::
{
    GetKeyState, state, LButton

    if state = D
        MoveCurrentWindowToDesktop(1)
    else
        switchDesktop(1)
    return
}

LWin & 2::
{
    GetKeyState, state, LButton

    if state = D
        MoveCurrentWindowToDesktop(2)
    else
        switchDesktop(2)
    return
}

LWin & 3::
{
    GetKeyState, state, LButton

    if state = D
        MoveCurrentWindowToDesktop(3)
    else
        switchDesktop(3)
    return
}

LWin & 4::
{
    GetKeyState, state, LButton

    if state = D
        MoveCurrentWindowToDesktop(4)
    else
        switchDesktop(4)
    return
}

LWin & 5::
{
    GetKeyState, state, LButton

    if state = D
        MoveCurrentWindowToDesktop(5)
    else
        switchDesktop(5)
    return
}

LWin & 6::
{
    GetKeyState, state, LButton

    if state = D
        MoveCurrentWindowToDesktop(6)
    else
        switchDesktop(6)
    return
}

LWin & 7::
{
    GetKeyState, state, LButton

    if state = D
        MoveCurrentWindowToDesktop(7)
    else
        switchDesktop(7)
    return
}

LWin & 8::
{
    GetKeyState, state, LButton

    if state = D
        MoveCurrentWindowToDesktop(8)
    else
        switchDesktop(8)
    return
}

LWin & 9::
{
    GetKeyState, state, LButton

    if state = D
        MoveCurrentWindowToDesktop(9)
    else
        switchDesktop(9)
    return
}


CapsLock & F1::
{
    showAllWindows()
    return
}

CapsLock & F2::
{
    storeCurrentTmpWindows()
    return
}

CapsLock & F3::
{
    restoreTmpWindows()
    return
}

CapsLock & 1::
{
    multiSelectWindows("1")
    return
}

CapsLock & 2::
{
    multiSelectWindows("2")
    return
}

CapsLock & 3::
{
    multiSelectWindows("3")
    return
}

CapsLock & 4::
{
    multiSelectWindows("4")
    return
}

CapsLock & 5::
{
    multiSelectWindows("5")
    return
}

CapsLock & 6::
{
    multiSelectWindows("6")
    return
}

CapsLock & R::
{
    multiSelectWindows("R")
    return
}

CapsLock & T::
{
    multiSelectWindows("T")
    return
}

CapsLock & Y::
{
    multiSelectWindows("Y")
    return
}

CapsLock & F::
{
    multiSelectWindows("F")
    return
}

CapsLock & G::
{
    multiSelectWindows("G")
    return
}

CapsLock & H::
{
    multiSelectWindows("H")
    return
}

CapsLock & V::
{
    multiSelectWindows("V")
    return
}

CapsLock & B::
{
    multiSelectWindows("B")
    return
}

CapsLock & N::
{
    multiSelectWindows("N")
    return
}

CapsLock & U::
{
    multiSelectWindows("U")
    return
}

CapsLock & J::
{
    multiSelectWindows("J")
    return
}

CapsLock & M::
{
    multiSelectWindows("M")
    return
}

