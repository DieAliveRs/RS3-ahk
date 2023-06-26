#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, force
#Persistent

global GuiTitle := "Profiles"

; GuiControl unique ID (per instance)
global CurrentGuiId := 0

; GuiControl variables
global ProfileListBox := -1
global ActiveProfileText := -1
global selectedProfile := ""
global ClearProfileButton := -1
global CustomizeProfileButton := -1

; CostumizeGui variables
global Zam_ent := 1
global Zam_disr := 1
global Zam_mageMelee := 0
global Zam_mageRange := 1

global Rago_tripleTc = 1
global Rago_TcAutoDetoHammer = 1

global KK_SGBStall = 1
global KK_SGBRelease = 1
global KK_Release = 1

global ED1_mageMelee = 1

global ED2_mageRange = 1

global BackButton := -1
global AcceptButton := -1

global ProfilesList := "Zammy|Vorago|Kalphite King|Ed1|Ed2"

DestroyGui(){
    Gui %CurrentGuiId%: Destroy
}

ReloadHandler(){
    Reload
}

UpdateActiveProfileDetails(profile){
    GuiControl,, ActiveProfileText, % "Active profile: " profile

    ;if x profile -> call x function
    ActivateProfiles(profile)
}

ClearProfileHandler() {
    selectedProfile := ""
    GuiControl,, ActiveProfileText, % "Active profile: " selectedProfile

    ClearProfiles()
}

CustomizeProfileHandler(){
    ; New gui to select which macros are on/off
    CustomizeGui(selectedProfile)
}

SetProfileHandler(){
    ; Updates state variables associated with controls
    Gui, Submit, NoHide

    if (A_GuiEvent = "Normal") {
        selectedProfile := ProfileListBox
        UpdateActiveProfileDetails(selectedProfile)
    } else if (A_GuiEvent = "DoubleClick") {
        selectedProfile := ProfileListBox
    }
}

CreateProfileList(){
    Gui, Font, cBlack
    Gui, Add, ListBox, r10 w270 x15 Center vProfileListBox gSetProfileHandler Sort, %ProfilesList%
}

CreateMainGui(){
    Gui, SettingsGui:New, +HwndCurrentGuiId, %GuiTitle%

    Gui, Color, 202020
    Gui, Font, cWhite s12

    ; Reload script button
    Gui, Add, Button, w140 x5 y5 gReloadHandler, &Reload script
    ; Clear profile button
    Gui, Add, Button, w140 x150 y5 vClearProfileButton gClearProfileHandler, &Clear profile

    ; Active profile name
    Gui, Font, bold
    Gui, Add, Text, cWhite Center w250 r2 x25 vActiveProfileText, % "Active profile: " selectedProfile
    Gui, Font, Normal

    ; "Switch profile" list box for base and user profiles
    CreateProfileList()

    ; Customize profile button
    Gui, add, Button, w270 vCustomizeProfileButton gCustomizeProfileHandler, &Customize profile

}

ProfileHandler(){
    Gui, Submit, NoHide
    ActivateProfiles(selectedProfile)
    return
}

BackButtonHandler(){
    MainGui()
}

AcceptButtonHandler(){
    DestroyGui()
    return
}

ZamCheckboxes(){
    Gui, Add, Checkbox, cWhite Center x5 y45 Checked vZam_ent gProfileHandler, &Entangle
    Gui, Add, Checkbox, cWhite Center x5 y65 Checked vZam_disr gProfileHandler, &Disrupt
    Gui, Add, Checkbox, cWhite Center x5 y85 vZam_mageMelee gProfileHandler, &Mage Melee
    Gui, Add, Checkbox, cWhite Center x5 y105 Checked vZam_mageRange gProfileHandler, &Mage Range
}

RagoCheckboxes(){
    Gui, Add, Checkbox, cWhite Center x5 y45 Checked vRago_tripleTc gProfileHandler, &Triple TC
    Gui, Add, Checkbox, cWhite Center x5 y65 Checked vRago_TcAutoDetoHammer gProfileHandler, &Tc Auto Deto Hammer
}

KKCheckboxes(){
    Gui, Add, Checkbox, cWhite Center x5 y45 Checked vKK_SGBStall gProfileHandler, &SGB Stall
    Gui, Add, Checkbox, cWhite Center x5 y65 Checked vKK_SGBRelease gProfileHandler, &SGB Release
    Gui, Add, Checkbox, cWhite Center x5 y85 Checked vKK_Release gProfileHandler, &Release
}

ED1Checkboxes(){
    Gui, Add, Checkbox, cWhite Center x5 y45 Checked vED1_mageMelee gProfileHandler, &Mage Melee
}

ED2Checkboxes(){
    Gui, Add, Checkbox, cWhite Center x5 y45 Checked vED2_mageRange gProfileHandler, &Mage Range
}

CreateCustomizeGui(profile){
    Gui, SettingsGui:New, +HwndCurrentGuiId, %profile% profile

    Gui, Color, 202020
    Gui, Font, cWhite s12

    Gui, add, Button, w100 x5 y5 vBackButton gBackButtonHandler, &Go Back

    if (profile = "Zammy")
        ZamCheckboxes()

    if (profile = "Vorago")
        RagoCheckboxes()
    
    if (profile = "Kalphite King")
        KKCheckboxes()
    
    if (profile = "Ed1")
        ED1Checkboxes()
    
    if (profile = "Ed2")
        ED2Checkboxes()

    Gui, add, Button, w270 x5 y160 vAcceptButton gAcceptButtonHandler, &Accept
}


ShowGuiAtCenter(){
    Gui, Show, % Center
}

MainGui(){
    CreateMainGui()
    ShowGuiAtCenter()
}

CustomizeGui(profile){
    CreateCustomizeGui(profile)
    ShowGuiAtCenter()
}



