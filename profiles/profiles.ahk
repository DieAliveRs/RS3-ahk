#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, force

global RemappedKeys := ["F1", "F2", "F21", "F22", "F23", "+F23", "!F23", "F24", "+F24", "!F24", "NumpadAdd"]

Zammy(){
    if (Zam_ent = 1)
        Hotkey, NumpadAdd, Entangle, On
    if (Zam_disr = 1)
        Hotkey, F24, Disrupt, On
        Hotkey, +F24, Disrupt, On ;Shift + F24
        Hotkey, !F24, Disrupt, On ;Alt + F24
    if (Zam_mageMelee = 1)
        Hotkey, F23, ZammyMageMelee, On
        Hotkey, +F23, ZammyMageMelee, On
        Hotkey, !F23, ZammyMageMelee, On
    if (Zam_mageRange = 1)
        Hotkey, F23, ZammyMageRange, On
        Hotkey, +F23, ZammyMageRange, On
        Hotkey, !F23, ZammyMageRange, On
    
    return
}

Rago(){
    if (Rago_tripleTc = 1)
        Hotkey, F22, TripleTC, On
    if (Rago_TcAutoDetoHammer = 1)
        Hotkey, F24, TCAutoDetoHammer, On
    
    return
}

KK(){
    if (KK_SGBStall = 1)
        Hotkey, F1, KKSGBstall, On
    if (KK_SGBRelease = 1)
        Hotkey, F2, KKSGBrelease, On
    if (KK_Release = 1)
        Hotkey, F22, KKRelease, On
    
    return
}

ED1(){
    if (ED1_mageMelee = 1)
        Hotkey, F21, ED1MageMelee, On
    return
}

ED2(){
    if (ED2_mageRange = 1)
        Hotkey, F21, ED2MageRange, On
    return
}


ClearProfiles(){
    for i, hotkeys in RemappedKeys
        Try Hotkey, %hotkeys%, Off

    Menu, Tray, Icon, gui\icons\rs.ico
    return
}

ActivateProfiles(profile){
    if (profile = "Zammy"){
        ClearProfiles()
        Zammy()
        Menu, Tray, Icon, gui\icons\zam.ico
        return
    }

    else if (profile = "Vorago"){
        ClearProfiles()
        Rago()
        Menu, Tray, Icon, gui\icons\rago.ico
        return
    }

    else if (profile = "Kalphite King"){
        ClearProfiles()
        KK()
        Menu, Tray, Icon, gui\icons\kk.ico
        return
    }

    else if (profile = "Ed1"){
        ClearProfiles()
        ED1()
        Menu, Tray, Icon, gui\icons\seiryu.ico
        return
    }

    else if (profile = "Ed2"){
        ClearProfiles()
        ED2()
        Menu, Tray, Icon, gui\icons\bsd.ico
        return
    }
}
