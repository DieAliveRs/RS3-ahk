#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, force

ScreenClick(Coordinates){
    CoordMode, Mouse, Window
    MouseGetPos, StartX, StartY
    Random, xCoord, Coordinates.X1, Coordinates.X2
    Random, yCoord, Coordinates.Y1, Coordinates.Y2
    Click, %xCoord% %yCoord%
    SleepRand(1, 5)
    MouseMove, StartX, StartY
}