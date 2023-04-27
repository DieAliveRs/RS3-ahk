#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, force




ZammyMageMelee(){
    Hybrid(dir.ekz, Coordinates.MH, binds.tectHelmBind, binds.tectTopBind, binds.tectLegsBind, "", binds.detoBootsBind, "", binds.MH, binds.OH, binds.MageDmgPray, binds.vestHelmBind, binds.vestTopBind, binds.vestLegsBind, "", binds.vestBootsBind, binds.ekzBind, "", "", binds.MeleeDmgPray)
    return
}





