;
; This functions finds out ID of current session.
;

; DLL
hVirtualDesktopAccessor := DllCall("LoadLibrary", "Str", A_ScriptDir . "\VirtualDesktopAccessor.dll", "Ptr")
global MoveWindowToDesktopNumberProc := DllCall("GetProcAddress", Ptr, hVirtualDesktopAccessor, AStr, "MoveWindowToDesktopNumber", "Ptr")

SetKeyDelay, 75

getSessionId()
{
    ProcessId := DllCall("GetCurrentProcessId", "UInt")
    DllCall("ProcessIdToSessionId", "UInt", ProcessId, "UInt*", SessionId)
    return SessionId
}

initReg()
{
    global currentDesktopId, desktopList, totalDesktop
    SessionId := getSessionId()
    RegRead, currentDesktopId, HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\%SessionId%\VirtualDesktops, CurrentVirtualDesktop
    RegRead, desktopList, HKEY_CURRENT_USER, SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VirtualDesktops, VirtualDesktopIDs
    return
}

currentDesktop()
{
    global currentDesktopId, desktopList, totalDesktop
    initReg()
    totalDesktop := floor(strLen(desktopList)/32)
    currentDesktopId := floor((inStr(desktopList,currentDesktopId)-1)/strLen(currentDesktopId) + 1)
    return
}

switchDesktop(targetDesktop)
{
    global currentDesktopId, desktopList, totalDesktop
    currentDesktop()
    
    if (targetDesktop > totalDesktop)
    {
        msgbox, 64, , % "Please choose less than " totalDesktop + 1, 1
        return
    }
    
    While (targetDesktop > currentDesktopId)
    {
        Send ^#{Right}
        currentDesktopId++
    }
    
    While (targetDesktop < currentDesktopId)
    {
        Send ^#{Left}
        currentDesktopId--
    }    
    return
}

MoveCurrentWindowToDesktop(desktopNumber) {
    WinGet, activeHwnd, ID, A
    DllCall(MoveWindowToDesktopNumberProc, UInt, activeHwnd, UInt, desktopNumber - 1)
    switchDesktop(desktopNumber)
    return
}

;
; This functions for select windows.
;

objWindow := {}

initSeveralWindows()

getClassWindow(windowNumber)
{
    global objWindow
    WinGet, hwndWindow, ID, A
    objWindow[windowNumber] := hwndWindow

    WinGet, exeWindow, ProcessName, ahk_id %hwndWindow%
    msgbox, 0x30, , % windowNumber " :" exeWindow, 0.5

    return
}

activeWindow(windowNumber)
{
    global objWindow
    if WinExist("ahk_id" . objWindow[windowNumber])
        WinActivate    
    return
}

showAllWindows()
{
    global objWindow
    str := ""
    
    For index, value in objWindow
    {
        WinGet, value, ProcessName, ahk_id %value%
        str := str . index . " :" . value . "`r`n"
    }
    
    msgbox, 0x30, , % str, 1
    return
}

lockBottomWindows()
{
    global lockWindows

    if lockWindows = "False"
    {
        lockWindows := "True"
        msgWarn := "Several windows are locked"
    }
    else
    {
        lockWindows := "False"
        msgWarn := "Several windows are released"
    }

    msgbox, 0x30, , % lockWindows, 0.5
    return
}

initSeveralWindows()
{
    global objWindow, tmpObjWindow

    objWindow[1]  := WinExist("ahk_exe chrome.exe")
    objWindow[2]  := WinExist("ahk_exe Q-Dir.exe")
    objWindow[3]  := WinExist("ahk_exe notepad++.exe")
    objWindow[4]  := WinExist("ahk_exe ONENOTE.EXE")
    objWindow[5]  := WinExist("ahk_exe OUTLOOK.EXE")
    objWindow[6]  := WinExist("ahk_exe Teams.exe")

    tmpObjWindow  := objWindow.Clone()
}

multiSelectWindows(objectSelected)
{
    GetKeyState, state, LButton

    if state = D
        getClassWindow(objectSelected)
    else
        activeWindow(objectSelected)
}

storeCurrentTmpWindows()
{
    global objWindow, tmpObjWindow
    tmpObjWindow := objWindow.Clone()
    msgbox, 0x30, , Saved states, 0.5
    return
}

restoreTmpWindows()
{
    global objWindow, tmpObjWindow
    objWindow := tmpObjWindow.Clone()
    msgbox, 0x30, , Release temporary states, 0.5
    return
}