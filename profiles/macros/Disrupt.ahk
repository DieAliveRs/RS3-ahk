#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, force




Disrupt(){
    Cast(binds.SbsLunar)
    SleepRand(1,5)
    Cast(binds.Disr)
    return
}

Disrupt_cC(){
    ControlClick(Coordinates.SbsLunar)
    SleepRand(1, 5)
    ControlClick(Coordinates.Disr)
}




