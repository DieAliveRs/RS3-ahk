#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.






ED1MageMelee(){
    Hybrid(dir.tectTop, Coordinates.Top, binds.MeleeHelm, dir.vestHelm, binds.MeleeTop, binds.MeleeLegs, "", binds.MeleeBoots, dir.vestBoots, binds.2HWeap, "", "", binds.MeleeDmgPray, Coordinates.MeleePray, binds.MeleeHelm, dir.tectHelm, binds.MeleeTop, binds.MeleeLegs, "", binds.MeleeBoots, dir.detoBoots, binds.2HWeap, "", "", binds.MageDmgPray, Coordinates.MagePray, dir.prayer, Coordinates.Helm, Coordinates.Boots)
    return
}