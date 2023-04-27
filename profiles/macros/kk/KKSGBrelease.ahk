#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, force




KKSGBRelease(){
    Cast(binds.Spell)
    SleepRand(1,5)
    Cast(binds.keris)
    SleepRand(1,5)
    Cast(binds.OH)
    SleepRand(1,5)
    Cast(binds.DDSeof)
    SleepRand(1,5)
    Cast(binds.Spec)
    SleepRand(650,700)
    Cast(binds.vestmentsTop)
    SleepRand(1,5)
    Cast(binds.vestmentsBottom)
    SleepRand(1,5)
    Cast(binds.MeleeDmgPray)
    SleepRand(1,5)
    Cast(binds.apot)
    SleepRand(1,5)
    Cast(binds.Vuln)
    return
}