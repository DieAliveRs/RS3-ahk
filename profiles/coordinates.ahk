﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, force

global Coordinates := Object()

Coordinates.MH := Object("X1", 1875, "Y1", 895, "X2", 1915, "Y2", 933)
Coordinates.OH := Object("X1", 1795, "Y1", 933, "X2", 1830, "Y2", 970)

Coordinates.Helm := Object("X1", 1755, "Y1", 895, "X2", 1790, "Y2", 933)
Coordinates.Top := Object("X1", 1755, "Y1", 933, "X2", 1790, "Y2", 970)
Coordinates.Legs := Object("X1", 1835, "Y1", 933, "X2", 1875, "Y2", 970)
Coordinates.Gloves := Object("X1", 1875, "Y1", 933, "X2", 1915, "Y2", 970)
Coordinates.Boots := Object("X1", 1755, "Y1", 970, "X2", 1790, "Y2", 1007)

Coordinates.Quiver := Object("X1", 1835, "Y1", 970, "X2", 1875, "Y2", 1007)

Coordinates.RangePray := Object("X1", 1315, "Y1", 895, "X2", 1337, "Y2", 918)
Coordinates.MeleePray := Object("X1", 1350, "Y1", 895, "X2", 1372, "Y2", 918)
Coordinates.MagePray := Object("X1", 1383, "Y1", 895, "X2", 1407, "Y2", 918)

Coordinates.InciteFear := Object("X1", 50, "Y1", 327, "X2", 72, "Y2", 349)
Coordinates.BloodBarrage := Object("X1", 87, "Y1", 293, "X2", 110, "Y2", 316)
Coordinates.Exan := Object("X1", 11, "Y1", 327, "X2", 34, "Y2", 350)
Coordinates.RubyAurora := Object("X1", 125, "Y1", 225, "X2", 148, "Y2", 248)

; Coordinates.SpellswapBox := Object("X1", 4, "Y1", 35, "X2", 70, "Y2", 48)





