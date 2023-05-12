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

EquipCheck(EquipBind, FileName, Coords){
    if(imageSearch(FileName, Coords) != 0){
        ; != 0 -> prayer is not on
        Equip(EquipBind)
        return
    }
}

Hybrid(WeaponFileName, WeaponCoordinates, Helm0, HelmFile0, Top0, Legs0, Gloves0, Boots0, BootsFile0, 2H0, MH0, OH0, Prayer0, PrayerCoords0, Helm1, HelmFile1, Top1, Legs1, Gloves1, Boots1, BootsFile1, 2H1, MH1, OH1, Prayer1, PrayerCoords1, PrayerFile, HelmCoords, BootsCoords){
    ;decides which style to equip (checks with Style1)
    if(imageSearch(WeaponFileName, WeaponCoordinates) = 0){
        ; = 0 -> Style1 equiped, equip Style0
        
        Equip(Top0)
        Equip(Legs0)
        EquipCheck(Helm0, HelmFile0, HelmCoords)
        Equip(Gloves0)
        EquipCheck(Boots0, BootsFile0, BootsCoords)
        Equip(2H0)
        Equip(MH0)
        Equip(OH0)
        
        EquipCheck(Prayer0, PrayerFile, PrayerCoords0)

        return
    }
    else{
        ;Style1 not equipped, equip Style1
        
        Equip(Top1)
        Equip(Legs1)
        EquipCheck(Helm1, HelmFile1, HelmCoords)
        Equip(Gloves1)
        EquipCheck(Boots1, BootsFile1, BootsCoords)
        Equip(2H1)
        Equip(MH1)
        Equip(OH1)

        EquipCheck(Prayer1, PrayerFile, PrayerCoords1)

        return
    }
    return
}