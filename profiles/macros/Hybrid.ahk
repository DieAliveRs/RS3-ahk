#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, force

Equip(EquipBind){
    if(EquipBind!=""){
        Cast(EquipBind)
        SleepRand(1,5)
        return
    }
}

Hybrid(FileName, Coordinates, Helm0, Top0, Legs0, Gloves0, Boots0, 2H0, MH0, OH0, Prayer0, Helm1, Top1, Legs1, Gloves1, Boots1, 2H1, MH1, OH1, Prayer1){
    ;IsRunning := True

    if(imageSearch(FileName, Coordinates) = 0){
        ;Style1 already equiped, equip Style1
        ;MsgBox % "if 0 check"
        
        Equip(Top0)
        Equip(Legs0)
        Equip(Helm0)
        Equip(Gloves0)
        Equip(Boots0)
        Equip(2H0)
        Equip(MH0)
        Equip(OH0)
        
        Equip(Prayer0)

        return
    }
    else{
        ;Style1 not equipped, equip Style0
        ;MsgBox % "if 1 check"
        Equip(2H1)
        Equip(Top1)
        Equip(Legs1)
        Equip(Helm1)
        Equip(Gloves1)
        Equip(Boots1)
        Equip(MH1)
        Equip(OH1)

        Equip(Prayer1)
        

        return
    }
    return
}