#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, force

SendKey(ByRef key){
    Send {%key% down}
    SleepRand(1, 5)
    Send {%key% up}
    return
}

Cast(Bind){
    key := Bind.bind
    modifier := Bind.modifier
    
    if(modifier=""){
        SendKey(key)
        return
    }
    else if(modifier="alt"){
        Send {Alt down}
        SleepRand(1, 5)
        SendKey(key)
        SleepRand(1, 5)
        Send {Alt up}
        return
    }
    else if(modifier="shift"){
        Send {Shift down}
        SleepRand(1, 5)
        SendKey(key)
        SleepRand(1, 5)
        Send {Shift up}
        return
    }
    else if(modifier="ctrl"){
        Send {LCtrl down}
        SleepRand(1, 5)
        SendKey(key)
        SleepRand(1, 5)
        Send {LCtrl up}
        return
    }
    return
}

