#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, force




KKRelease(){
    Cast(binds.TCbackwards)
    SleepRand(1,5)
    Cast(binds.Spell)
    SleepRand(1,5)
    Cast(binds.Cane)
    SleepRand(1,5)
    Cast(binds.GMauleof)
    SleepRand(1,5)
    Cast(binds.EOF1)
    SleepRand(1,5)
    Cast(binds.EOF2)
    SleepRand(1,5)
    Cast(binds.EOF3)
    SleepRand(1,5)
    Cast(binds.EOF4)
    SleepRand(1,5)
    Cast(binds.EOF5)
    return
}