#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, force




ZammyMageMelee(){
    Hybrid(dir.ekz, Coordinates.MH, binds.tectHelmBind, dir.tectHelm, binds.tectTopBind, binds.tectLegsBind, "", binds.detoBootsBind, dir.detoBoots, "", binds.MH, binds.OH, binds.MageDmgPray, Coordinates.MagePray, binds.vestHelmBind, dir.vestHelm, binds.vestTopBind, binds.vestLegsBind, "", binds.vestBootsBind, dir.vestBoots, binds.ekzBind, "", "", binds.MeleeDmgPray, Coordinates.MeleePray, dir.prayer, Coordinates.Helm, Coordinates.Boots)
    return
}





