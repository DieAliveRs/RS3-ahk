#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, force




TCAutoDetoHammer(){
    Cast(binds.TC)
    SleepRand(1,5)
    Cast(binds.Spell)
    SleepRand(1,5)
    Cast(binds.Deto)
    SleepRand(1,5)
    Cast(binds.MeleeMH)
    SleepRand(1,5)
    Cast(binds.MeleeOH)
    SleepRand(1,5)
    Cast(binds.Ingen)
    SleepRand(1,5)
    Cast(binds.Spec)
    SleepRand(1,5)
    Cast(binds.Surge)
    return
}