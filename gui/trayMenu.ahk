#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force


ReloadScript(){
    Reload
}

ExitScript(){
    ExitApp
}

MenuTray(){
    Menu, Tray, Icon, gui\icons\rs.ico
    Menu, Tray, NoStandard
    Menu, Tray, Add, Profiles Settings, MainGui
    Menu, Tray, Add ;space
    Menu, Tray, Add, Reload, ReloadScript
    Menu, Tray, Add ;space
    Menu, Tray, Add, Exit, ExitScript
}

