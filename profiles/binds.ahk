#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, force

global binds := Object()

;Weapons
binds.2H := {bind: "Home", modifier: ""}
binds.MH := {bind: "PgUp", modifier: ""}
binds.OH := {bind: "PgDn", modifier: ""}
binds.Shield := {bind: ".", modifier: ""}
binds.MeleeMH := {bind: "F7", modifier: ""}
binds.MeleeOH := {bind: "F8", modifier: ""}

;Abilities
;magic
binds.Wrack := {bind: "1", modifier: ""}
binds.Asphyx := {bind: "2", modifier: ""}
binds.WM := {bind: "3", modifier: ""}
binds.Gconc := {bind: "4", modifier: ""}
binds.Chain := {bind: "5", modifier: ""}
binds.Corrupt := {bind: "6", modifier: ""}
binds.Dbreath := {bind: "q", modifier: ""}
binds.SmokeTendrils := {bind: "w", modifier: ""}
binds.Sun := {bind: "e", modifier: ""}
binds.Impact := {bind: "q", modifier: "alt"}
binds.DeepImpact := {bind: "w", modifier: "alt"}
binds.Nami := {bind: "k", modifier: ""}
binds.Omni := {bind: "x", modifier: ""}
binds.Deto := {bind: "2", modifier: "alt"}

;ranged


;melee
binds.Slice := {bind: "1", modifier: ""}
binds.Assault := {bind: "2", modifier: ""}
binds.Cane := {bind: "3", modifier: ""}

;global abils
binds.Surge := {bind: "i", modifier: ""}
binds.Escape := {bind: "u", modifier: ""}
binds.EoFSpec := {bind: "F5", modifier: ""}
binds.Spec := {bind: "F6", modifier: ""}

;Other
binds.TC := {bind: "``", modifier: ""}
binds.TCbackwards := {bind: ";", modifier: ""}
binds.Spell := {bind: "s", modifier: ""}
binds.SbsLunar := {bind: "q", modifier: "shift"}
binds.Disr := {bind: "w", modifier: "shift"}
binds.Vuln := {bind: "f", modifier: ""}
binds.Ingen := {bind: "p", modifier: ""}

;Prayers
binds.RangeDmgPray := {bind: "[", modifier: ""}
binds.MeleeDmgPray := {bind: "]", modifier: ""}
binds.MageDmgPray := {bind: "\", modifier: ""}


;Boss-specific binds
;;==============================================================
;Zammy
binds.tectHelmBind := {bind: "e", modifier: ""}
binds.tectTopBind := {bind: "q", modifier: ""}
binds.tectLegsBind := {bind: "w", modifier: ""}
binds.detoBootsBind := {bind: "k", modifier: ""}

;Melee brid
binds.ekzBind := {bind: "-", modifier: ""}
binds.vestHelmBind := {bind: "8", modifier: ""}
binds.vestTopBind := {bind: ",", modifier: ""}
binds.vestLegsBind := {bind: "F7", modifier: ""}
binds.vestBootsBind := {bind: "NumpadDiv", modifier: ""}

;Range brid
binds.rangeTopBind := {bind: ",", modifier: ""}
binds.rangeLegsBind := {bind: "F7", modifier: ""}
binds.Bolg := {bind: "NumpadDiv", modifier: ""}
binds.cryptTopSwitch := {bind: "NumpadDiv", modifier: ""}
binds.cryptLegsSwitch := {bind: "NumpadMult", modifier: ""}
binds.fsoaSwitch := {bind: "a", modifier: ""}
binds.eofSwitch := {bind: "l", modifier: ""}

;other
binds.SbsStandard := {bind: "0", modifier: ""}
binds.Entangle := {bind: "l", modifier: ""}
;;==============================================================

;KK
binds.blight := {bind: "F7", modifier: ""}
binds.Spec := {bind: "F5", modifier: ""}
binds.DDSeof := {bind: "F8", modifier: ""}
binds.GMauleof := {bind: ",", modifier: ""}
binds.EOF1 := {bind: "o", modifier: ""}
binds.EOF2 := {bind: "c", modifier: ""}
binds.EOF3 := {bind: "NumpadDiv", modifier: ""}
binds.EOF4 := {bind: "NumpadMult", modifier: ""}
binds.EOF5 := {bind: "-", modifier: ""}
binds.apot := {bind: "0", modifier: ""}
binds.vestmentsTop := {bind: "g", modifier: ""}
binds.vestmentsBottom := {bind: "d", modifier: ""}
binds.FulQuiver := {bind: "h", modifier: ""}
binds.keris := {bind: "l", modifier: ""}

