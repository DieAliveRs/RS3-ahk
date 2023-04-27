#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, force

#Include, profiles\macros\_index.ahk

#Include, profiles\binds.ahk
#Include, profiles\coordinates.ahk
#Include, profiles\filenames.ahk
#Include, profiles\profiles.ahk
