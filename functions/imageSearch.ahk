#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, force

imageSearch(ByRef FileName, Coordinates){
    if (FileName = ""){
        MsgBox % "imageSearch called without FileName"
        return
    }

    filePath := "profiles\imageFiles\" FileName ".png"

    X1 := Coordinates.X1
    Y1 := Coordinates.Y1
    X2 := Coordinates.X2
    Y2 := Coordinates.Y2

    ;ImageSearch, , , %X1%, %Y1%, %X2%, %Y2%, *50, *TransBlack %filePath%
    ImageSearch, , , X1, Y1, X2, Y2, *71, *TransBlack %filePath%

    ;Item equipped
    if (ErrorLevel = 0){
        OutputDebug, %A_Now%: "%filePath%" is already equipped.
        return 0
    }
    ;Item not equipped
    else{
        OutputDebug, %A_Now%: "%filePath%" is being equipped.
        return 1
    }
}