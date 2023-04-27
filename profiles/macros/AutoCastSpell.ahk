#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, force

;#Include, profiles\coordinates.ahk

; global IsRunning := false



AutoCastSpell(Coordinates){
    ; if (IsRunning is true){
    ;     return
    ; }
    ; global IsRunning := true

    Random, rightClickX, Coordinates.X1, Coordinates.X2
    Random, rightClickY, Coordinates.Y1, Coordinates.Y2

    ; Store mouse original position
    ; MouseGetPos, StartX, StartY
    ; CoordMode, Pixel, Window
    ;Click, %rightClickX% %rightClickY% Right
    SetControlDelay -1
    ControlClick, JagOpenGLView1, RuneScape, , Right, , NA D X%rightClickX% Y%rightClickY%

    SleepRand(8,10)

    NewCoordsX1 := Coordinates.X1 + 4
    NewCoordsX2 := Coordinates.X2 + 70
    NewCoordsY1 := Coordinates.Y1 + 35
    NewCoordsY2 := Coordinates.Y2 + 48

    Random, leftClickX, NewCoordsX1, NewCoordsX2
    Random, leftClickY, NewCoordsY1, NewCoordsY2

    ;Click, %leftClickX% %leftClickY%
    SetControlDelay -1
    ControlClick, JagOpenGLView1, RuneScape, , , , NA X%leftClickX% Y%leftClickY%
    ;Move back to original position
    ; MouseMove, StartX, StartY
    ; IsRunning := false
    return
}
