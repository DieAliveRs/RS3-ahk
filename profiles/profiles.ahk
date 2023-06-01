#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, force



;Zammy
Zammy(){
    Hotkey, NumpadAdd, Entangle, On
    Hotkey, F24, Disrupt, On
    Hotkey, +F24, Disrupt, On ;Shift + F24
    Hotkey, !F24, Disrupt, On ;Alt + F24
    ; Hotkey, F23, ZammyMageMelee, On
    ; Hotkey, +F23, ZammyMageMelee, On
    ; Hotkey, !F23, ZammyMageMelee, On
    Hotkey, F23, ZammyMageRange, On
    Hotkey, +F23, ZammyMageRange, On
    Hotkey, !F23, ZammyMageRange, On
    return
}


;Rago
Rago(){
    Hotkey, F22, TripleTC, On
    Hotkey, F24, TCAutoDetoHammer, On
    return
}


;KK
KK(){
    Hotkey, F1, KKSGBstall, On
    Hotkey, F2, KKSGBrelease, On
    Hotkey, F22, KKRelease, On
    return
}


ED1(){
    Hotkey,F21, ED1MageMelee, On
}