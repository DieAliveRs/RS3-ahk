#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, force

AntiSpam(FileName, Coordinates, SwitchBind){
    if(imageSearch(FileName, Coordinates) = 0){
        return
    }
    else{
        Equip(SwitchBind)
        return
    }
    return
}