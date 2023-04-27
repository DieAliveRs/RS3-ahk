#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, force




TripleTC(){
    Cast(binds.TC)
    SleepRand(1,5)
    Cast(binds.Spell)
    SleepRand(1,5)
    Cast(binds.TC)
    SleepRand(1,5)
    Cast(binds.Assault)
    SleepRand(1,5)
    Cast(binds.TC)
    SleepRand(1,5)
    Cast(binds.Spell)
    return
}