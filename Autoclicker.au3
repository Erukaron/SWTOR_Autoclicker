#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Outfile_type=a3x
#AutoIt3Wrapper_UseX64=n
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#include <AutoItConstants.au3>
#include <FileConstants.au3>
#include <MsgBoxConstants.au3>
#include <Misc.au3>
#include <StringConstants.au3>
#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>

#Region ### START Koda GUI section ### Form=d:\dropbox\programmierung\windows\gefaehrtenlevler#142\swtor_autoclicker\haupt.kxf
$Haupt = GUICreate("SWTOR Autoklicker", 665, 370, 474, 505)
$Menue_Datei = GUICtrlCreateMenu("&Datei")
$btnSpeichern = GUICtrlCreateMenuItem("Speichern...", $Menue_Datei)
$btnLaden = GUICtrlCreateMenuItem("Laden...", $Menue_Datei)
$Positionen = GUICtrlCreateGroup("Positionskonfiguration", 8, 128, 417, 217)
$PosGef1 = GUICtrlCreateGroup("Gefährte 1", 16, 144, 161, 73)
$btnErfassenGefaehrte1Job1 = GUICtrlCreateButton("Job 1 Erfassen", 24, 160, 75, 25)
$PosGefaehrte1Job1 = GUICtrlCreateInput("", 104, 162, 65, 21)
GUICtrlSetState(-1, $GUI_DISABLE)
$btnErfassenGefaehrte1Job2 = GUICtrlCreateButton("Job 2 Erfassen", 24, 184, 75, 25)
$PosGefaehrte1Job2 = GUICtrlCreateInput("", 104, 186, 65, 21)
GUICtrlSetState(-1, $GUI_DISABLE)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$PosGef2 = GUICtrlCreateGroup("Gefährte 2", 16, 216, 161, 49)
$btnErfassenGefaehrte2Job1 = GUICtrlCreateButton("Job 1 Erfassen", 24, 232, 75, 25)
$PosGefaehrte2Job1 = GUICtrlCreateInput("", 104, 234, 65, 21)
GUICtrlSetState(-1, $GUI_DISABLE)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$PosMissionen = GUICtrlCreateGroup("Missionen", 16, 264, 161, 73)
$btnErfassenMission1 = GUICtrlCreateButton("1 Erfassen", 24, 280, 75, 25)
$PosMission1 = GUICtrlCreateInput("", 104, 282, 65, 21)
GUICtrlSetState(-1, $GUI_DISABLE)
$btnErfassenMission2 = GUICtrlCreateButton("2 Erfassen", 24, 304, 75, 25)
$PosMission2 = GUICtrlCreateInput("", 104, 306, 65, 21)
GUICtrlSetState(-1, $GUI_DISABLE)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Sonstiges = GUICtrlCreateGroup("Sonstiges", 184, 144, 233, 121)
$btnErfassenMissionsannahme = GUICtrlCreateButton("Missionsannahme erfassen", 192, 160, 147, 25)
$PosMissionsannahme = GUICtrlCreateInput("", 344, 162, 65, 21)
GUICtrlSetState(-1, $GUI_DISABLE)
$PosAbschlussAktivieren = GUICtrlCreateInput("", 344, 186, 65, 21)
GUICtrlSetState(-1, $GUI_DISABLE)
$btnErfassenAbschlussAktivieren = GUICtrlCreateButton("Abschluss aktivieren erfassen", 192, 184, 147, 25)
$btnErfassenAbschlussBestaetigen = GUICtrlCreateButton("Abschluss bestätigen erfassen", 192, 208, 147, 25)
$PosAbschlussBestaetigen = GUICtrlCreateInput("", 344, 210, 65, 21)
GUICtrlSetState(-1, $GUI_DISABLE)
$btnErfassenMisserfolg = GUICtrlCreateButton("Misserfolg erfassen", 192, 232, 147, 25)
$PosMisserfolg = GUICtrlCreateInput("", 344, 234, 65, 21)
GUICtrlSetState(-1, $GUI_DISABLE)
GUICtrlCreateGroup("", -99, -99, 1, 1)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Auswahlen = GUICtrlCreateGroup("Auswahlkonfiguration", 8, 0, 417, 121)
$Missionen = GUICtrlCreateGroup("Missionswahrscheinlichkeiten", 256, 16, 161, 97)
$Label4 = GUICtrlCreateLabel("Mission 1", 264, 40, 48, 17)
$Mission_1 = GUICtrlCreateInput("0.333", 320, 36, 89, 21)
$Label5 = GUICtrlCreateLabel("Mission 2", 264, 64, 48, 17)
$Label6 = GUICtrlCreateLabel("Mission 3", 264, 88, 48, 17)
$Mission_2 = GUICtrlCreateInput("0.333", 320, 60, 89, 21)
$Mission_3 = GUICtrlCreateInput("0.333", 320, 84, 89, 21)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Jobs = GUICtrlCreateGroup("Job Wahrscheinlichkeiten", 112, 16, 137, 97)
$Label1 = GUICtrlCreateLabel("Job 1", 120, 40, 30, 17)
$Job_1 = GUICtrlCreateInput("0.333", 152, 36, 89, 21)
$Label2 = GUICtrlCreateLabel("Job 2", 120, 64, 30, 17)
$Label3 = GUICtrlCreateLabel("Job 3", 120, 88, 30, 17)
$Job_2 = GUICtrlCreateInput("0.333", 152, 60, 89, 21)
$Job_3 = GUICtrlCreateInput("0.333", 152, 84, 89, 21)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Gefaehrten = GUICtrlCreateGroup("Gefährten", 16, 16, 89, 97)
$Gefaehrte_1 = GUICtrlCreateCheckbox("Gefährte 1", 24, 40, 73, 17)
$Gefaehrte_2 = GUICtrlCreateCheckbox("Gefährte 2", 24, 64, 73, 17)
$Gefaehrte_3 = GUICtrlCreateCheckbox("Gefährte 3", 24, 88, 73, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Kontrollen = GUICtrlCreateGroup("Kontrollkonfiguration", 432, 0, 225, 153)
$AnticheatUmgehung = GUICtrlCreateGroup("Anticheat Umgehung", 440, 16, 209, 105)
$radionBewegungRandomisieren = GUICtrlCreateRadio("Bewegung randomisieren", 448, 32, 137, 17)
GUICtrlSetState(-1, $GUI_CHECKED)
$radioWartezeit = GUICtrlCreateRadio("Wartezeit (ms)", 448, 48, 145, 17)
$Label7 = GUICtrlCreateLabel("Min", 448, 72, 21, 17)
$Label8 = GUICtrlCreateLabel("Max", 448, 96, 24, 17)
$RandomisierungMin = GUICtrlCreateInput("10", 480, 68, 161, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_NUMBER))
$RandomisierungMax = GUICtrlCreateInput("50", 480, 92, 161, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_NUMBER))
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Mausgeschwindigkeit = GUICtrlCreateInput("10", 552, 124, 97, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_NUMBER))
$Label9 = GUICtrlCreateLabel("Mausgeschwindigkeit", 440, 128, 106, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Erklaerung = GUICtrlCreateEdit("", 432, 160, 225, 185, BitOR($ES_AUTOVSCROLL,$ES_AUTOHSCROLL,$ES_WANTRETURN))
GUICtrlSetData(-1, StringFormat("[Strg+F11]:        Start des Autoklickers\r\n[Strg+Shift+Alt]: Stop des Autoklickers"))
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

; ^ CTRL
; + SHIFT
; ! ALT
HotKeySet("^{F5}", "Speichern")
HotKeySet("^{F9}", "Laden")
;HotKeySet("^{F10}", "Erfassen")
HotKeySet("^{F11}", "Start")
HotKeySet("^!+{F11}", "Stop")

Global Const $INDIZES_JE_EINTRAG = 3
Global Const $MAUS_GESCHWINDIGKEIT = 10
Global Const $TRAYTIP_TIMEOUT = 5
Global Const $MIN_WARTEZEIT = 10
Global Const $MAX_WARTEZEIT = 50
Global Const $MAX_X = 1920
Global Const $MAX_Y = 1080
Global Const $MAUS_RANDOMISIERUNGS_GRENZWERT = 50
Global Const $MAUS_RANDOMISIEREN = False
Global Const $POS_TRENNER = ", "

Global $AnzahlEintraege = 0
Global $Eintraege[1] = [0] ; Jeder Eintrag besitzt: 0: Farbe für Click 1: X-Koordinate 2: Y-Koordinate
Global $Aktiv = False

Global $DeltaGefaehrte = -1
Global $DeltaJob = -1
Global $DeltaMission = -1

While True
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit

		Case $btnSpeichern
			Speichern()
		Case $btnLaden
			Laden()

		Case $btnErfassenGefaehrte1Job1
			PositionErfassungAufCtrl($PosGefaehrte1Job1)
		Case $btnErfassenGefaehrte1Job2
			PositionErfassungAufCtrl($PosGefaehrte1Job2)
		Case $btnErfassenGefaehrte2Job1
			PositionErfassungAufCtrl($PosGefaehrte2Job1)

		Case $btnErfassenMission1
			PositionErfassungAufCtrl($PosMission1)
		Case $btnErfassenMission2
			PositionErfassungAufCtrl($PosMission2)

		Case $btnErfassenMissionsannahme
			PositionErfassungAufCtrl($PosMissionsannahme)

		Case $btnErfassenAbschlussAktivieren
			PositionErfassungAufCtrl($PosAbschlussAktivieren)

		Case $btnErfassenAbschlussBestaetigen
			PositionErfassungAufCtrl($PosAbschlussBestaetigen)

		Case $btnErfassenMisserfolg
			PositionErfassungAufCtrl($PosMisserfolg)

	EndSwitch
WEnd

Func UpdateGefaehrtenDelta()
	If Not GUICtrlRead($PosGefaehrte1Job1) = "" Then
		If Not GUICtrlRead($PosGefaehrte2Job1) = "" Then
			Local $p1 = PositionVonCtrl($PosGefaehrte1Job1)
			Local $p2 = PositionVonCtrl($PosGefaehrte2Job1)

			$DeltaGefaehrte = $p2[1] - $p1[1]
		EndIf
	EndIf
EndFunc

Func UpdateJobDelta()
	If Not GUICtrlRead($PosGefaehrte1Job1) = "" Then
		If Not GUICtrlRead($PosGefaehrte1Job2) = "" Then
			Local $p1 = PositionVonCtrl($PosGefaehrte1Job1)
			Local $p2 = PositionVonCtrl($PosGefaehrte1Job2)

			$DeltaJob = $p2[0] - $p1[0]
		EndIf
	EndIf
EndFunc

Func UpdateMissionDelta()
	If Not GUICtrlRead($PosMission1) = "" Then
		If Not GUICtrlRead($PosMission2) = "" Then
			Local $p1 = PositionVonCtrl($PosMission1)
			Local $p2 = PositionVonCtrl($PosMission2)

			$DeltaMission = $p2[1] - $p1[1]
		EndIf
	EndIf
EndFunc

Func KlickerAusfuehren()
	UpdateGefaehrtenDelta()
	UpdateJobDelta()
	UpdateMissionDelta()

	AnStd("Delta Gefaehrte: " & $DeltaGefaehrte)
	AnStd("Delta Job: " & $DeltaJob)
	AnStd("Delta Mission: " & $DeltaMission)

	While $Aktiv
		Local $p

		If $DeltaGefaehrte > -1 And $DeltaJob > -1 And $DeltaMission > -1 Then
			If GuiCtrlRead($Gefaehrte_1) = $GUI_CHECKED Then
				; Maus auf Job
				Local $job = Waehle1Aus3(GUICtrlRead($Job_1), GUICtrlRead($Job_2), GUICtrlRead($Job_3))
				If $job = 1 Then
					$p = PositionVonCtrl($PosGefaehrte1Job1)
				ElseIf $job = 2 Then
					$p = PositionVonCtrl($PosGefaehrte1Job2)
				ElseIf $job = 3 Then
					$p = PositionVonCtrl($PosGefaehrte1Job2)
					$p[0] += $DeltaJob
				EndIf

				MausAufPos($p[0], $p[1], GUICtrlRead($Mausgeschwindigkeit))
				MausAktion()

				; Maus auf Mission
				Local $mission = Waehle1Aus3(GUICtrlRead($Mission_1), GUICtrlRead($Mission_2), GUICtrlRead($Mission_3))
				If $mission = 1 Then
					$p = PositionVonCtrl($PosMission1)
				ElseIf $mission = 2 Then
					$p = PositionVonCtrl($PosMission2)
				ElseIf $mission = 3 Then
					$p = PositionVonCtrl($PosMission2)
					$p[1] += $DeltaMission
				EndIf

				MausAufPos($p[0], $p[1], GUICtrlRead($Mausgeschwindigkeit))
				MausAktion()

				; Maus auf annehmen
				$p = PositionVonCtrl($PosMissionsannahme)
				MausAufPos($p[0], $p[1], GUICtrlRead($Mausgeschwindigkeit))
				MausAktion()
			EndIf

			If GuiCtrlRead($Gefaehrte_2) = $GUI_CHECKED Then
				; Maus auf Job
				Local $job = Waehle1Aus3(GUICtrlRead($Job_1), GUICtrlRead($Job_2), GUICtrlRead($Job_3))
				If $job = 1 Then
					$p = PositionVonCtrl($PosGefaehrte2Job1)
				ElseIf $job = 2 Then
					$p = PositionVonCtrl($PosGefaehrte2Job1)
					$p[0] += $DeltaJob
				ElseIf $job = 3 Then
					$p = PositionVonCtrl($PosGefaehrte2Job1)
					$p[0] += 2*$DeltaJob
				EndIf

				MausAufPos($p[0], $p[1], GUICtrlRead($Mausgeschwindigkeit))
				MausAktion()

				; Maus auf Mission
				Local $mission = Waehle1Aus3(GUICtrlRead($Mission_1), GUICtrlRead($Mission_2), GUICtrlRead($Mission_3))
				If $mission = 1 Then
					$p = PositionVonCtrl($PosMission1)
				ElseIf $mission = 2 Then
					$p = PositionVonCtrl($PosMission2)
				ElseIf $mission = 3 Then
					$p = PositionVonCtrl($PosMission2)
					$p[1] += $DeltaMission
				EndIf

				MausAufPos($p[0], $p[1], GUICtrlRead($Mausgeschwindigkeit))
				MausAktion()

				; Maus auf annehmen
				$p = PositionVonCtrl($PosMissionsannahme)
				MausAufPos($p[0], $p[1], GUICtrlRead($Mausgeschwindigkeit))
				MausAktion()
			EndIf

			If GuiCtrlRead($Gefaehrte_3) = $GUI_CHECKED Then
				; Maus auf Job
				Local $job = Waehle1Aus3(GUICtrlRead($Job_1), GUICtrlRead($Job_2), GUICtrlRead($Job_3))
				If $job = 1 Then
					$p = PositionVonCtrl($PosGefaehrte2Job1)
					$p[1] += $DeltaGefaehrte
				ElseIf $job = 2 Then
					$p = PositionVonCtrl($PosGefaehrte2Job1)
					$p[0] += $DeltaJob
					$p[1] += $DeltaGefaehrte
				ElseIf $job = 3 Then
					$p = PositionVonCtrl($PosGefaehrte2Job1)
					$p[0] += 2*$DeltaJob
					$p[1] += $DeltaGefaehrte
				EndIf

				MausAufPos($p[0], $p[1], GUICtrlRead($Mausgeschwindigkeit))
				MausAktion()

				; Maus auf Mission
				Local $mission = Waehle1Aus3(GUICtrlRead($Mission_1), GUICtrlRead($Mission_2), GUICtrlRead($Mission_3))
				If $mission = 1 Then
					$p = PositionVonCtrl($PosMission1)
				ElseIf $mission = 2 Then
					$p = PositionVonCtrl($PosMission2)
				ElseIf $mission = 3 Then
					$p = PositionVonCtrl($PosMission2)
					$p[1] += $DeltaMission
				EndIf

				MausAufPos($p[0], $p[1], GUICtrlRead($Mausgeschwindigkeit))
				MausAktion()

				; Maus auf annehmen
				$p = PositionVonCtrl($PosMissionsannahme)
				MausAufPos($p[0], $p[1], GUICtrlRead($Mausgeschwindigkeit))
				MausAktion()
			EndIf

			; Abgabe fokussieren
			$p = PositionVonCtrl($PosAbschlussAktivieren)
			MausAufPos($p[0], $p[1], GUICtrlRead($Mausgeschwindigkeit))
			MausAktion()

			; Abgabe bestätigen
			$p = PositionVonCtrl($PosAbschlussBestaetigen)
			MausAufPos($p[0], $p[1], GUICtrlRead($Mausgeschwindigkeit))
			MausAktion()

			; Misserfolg fokussieren
			$p = PositionVonCtrl($PosAbschlussAktivieren)
			MausAufPos($p[0], $p[1], GUICtrlRead($Mausgeschwindigkeit))
			MausAktion()

			; Misserfolg bestätigen
			$p = PositionVonCtrl($PosMisserfolg)
			MausAufPos($p[0], $p[1], GUICtrlRead($Mausgeschwindigkeit))
			MausAktion()
		EndIf
	Wend
EndFunc

; Gibt 1, 2 oder 3 zurück
Func Waehle1Aus3($p1, $p2, $p3)
	Local $gefunden = False
	Local $i1 = False
	Local $i2 = False
	Local $i3 = False

	While Not $gefunden
		$i1 = $p1 > Random(0, 1)
		$i2 = $p2 > Random(0, 1)
		$i3 = $p3 > Random(0, 1)

		If     $i1 And Not $i2 And Not $i3 Then Return 1
		If Not $i1 And     $i2 And Not $i3 Then Return 2
		If Not $i1 And Not $i2 And     $i3 Then Return 3
	WEnd
EndFunc

Func MausAufPos($X, $Y, $Geschw)
;~ 	Local $MausPos = MouseGetPos()
;~ 	While Not (($MausPos[0] = $X) And ($MausPos[1] = $Y))
		MouseMove($X, $Y, $Geschw)
;~ 		$MausPos = MouseGetPos()
;~ 	Wend
EndFunc

Func MausAktion()
	MouseClick($MOUSE_CLICK_PRIMARY)

	Sleep(100)

	If GUICtrlRead($radionBewegungRandomisieren) = $GUI_CHECKED Then
		MausbewegungRandomisieren()
	Else
		Sleep(Random(GUICtrlRead($RandomisierungMin), GUICtrlRead($RandomisierungMax), 1))
	EndIf
EndFunc

Func MausbewegungRandomisieren()
	Local $ende = Random(GUICtrlRead($RandomisierungMin), GUICtrlRead($RandomisierungMax), 1)
	For $i = 0 To $ende
		If $Aktiv Then
			Local $MausPos = MouseGetPos()
			MouseMove($MausPos[0] + Random(-$MAUS_RANDOMISIERUNGS_GRENZWERT, $MAUS_RANDOMISIERUNGS_GRENZWERT, 1), $MausPos[1] + Random(-$MAUS_RANDOMISIERUNGS_GRENZWERT, $MAUS_RANDOMISIERUNGS_GRENZWERT, 1), Random(1, $Mausgeschwindigkeit, 1))
		EndIf
	Next
EndFunc

Func Speichern()
	Local $fName = InputBox("Speichern", "Dateiname:", "default.dat")
	If @error = 0 Then
		$fHnd = FileOpen($fName, $FO_OVERWRITE)

		If Not FileWriteLine($fHnd, GUICtrlRead($Gefaehrte_1)) Then FehlerSpeichern()
		If Not FileWriteLine($fHnd, GUICtrlRead($Gefaehrte_2)) Then FehlerSpeichern()
		If Not FileWriteLine($fHnd, GUICtrlRead($Gefaehrte_3)) Then FehlerSpeichern()
		If Not FileWriteLine($fHnd, GUICtrlRead($Job_1)) Then FehlerSpeichern()
		If Not FileWriteLine($fHnd, GUICtrlRead($Job_2)) Then FehlerSpeichern()
		If Not FileWriteLine($fHnd, GUICtrlRead($Job_3)) Then FehlerSpeichern()
		If Not FileWriteLine($fHnd, GUICtrlRead($Mission_1)) Then FehlerSpeichern()
		If Not FileWriteLine($fHnd, GUICtrlRead($Mission_2)) Then FehlerSpeichern()
		If Not FileWriteLine($fHnd, GUICtrlRead($Mission_3)) Then FehlerSpeichern()
		If Not FileWriteLine($fHnd, GUICtrlRead($PosGefaehrte1Job1)) Then FehlerSpeichern()
		If Not FileWriteLine($fHnd, GUICtrlRead($PosGefaehrte1Job2)) Then FehlerSpeichern()
		If Not FileWriteLine($fHnd, GUICtrlRead($PosGefaehrte2Job1)) Then FehlerSpeichern()
		If Not FileWriteLine($fHnd, GUICtrlRead($PosMission1)) Then FehlerSpeichern()
		If Not FileWriteLine($fHnd, GUICtrlRead($PosMission2)) Then FehlerSpeichern()
		If Not FileWriteLine($fHnd, GUICtrlRead($PosMissionsannahme)) Then FehlerSpeichern()
		If Not FileWriteLine($fHnd, GUICtrlRead($PosAbschlussAktivieren)) Then FehlerSpeichern()
		If Not FileWriteLine($fHnd, GUICtrlRead($PosAbschlussBestaetigen)) Then FehlerSpeichern()
		If Not FileWriteLine($fHnd, GUICtrlRead($radionBewegungRandomisieren)) Then FehlerSpeichern()
		If Not FileWriteLine($fHnd, GUICtrlRead($radioWartezeit)) Then FehlerSpeichern()
		If Not FileWriteLine($fHnd, GUICtrlRead($RandomisierungMin)) Then FehlerSpeichern()
		If Not FileWriteLine($fHnd, GUICtrlRead($RandomisierungMax)) Then FehlerSpeichern()
		If Not FileWriteLine($fHnd, GUICtrlRead($Mausgeschwindigkeit)) Then FehlerSpeichern()
		If Not FileWriteLine($fHnd, GUICtrlRead($PosMisserfolg)) Then FehlerSpeichern()

		FileClose($fHnd)
	EndIf
EndFunc

Func FehlerSpeichern()
	MsgBox($MB_ICONERROR, "Fehler", "Fehler beim Speichern!")
EndFunc

Func Laden()
	Local $fName = InputBox("Laden", "Dateiname:", "default.dat")
	If @error = 0 Then
		$fHnd = FileOpen($fName, $FO_READ)

		If $fHnd = -1 Then
			MsgBox($MB_ICONERROR, "Fehler", "Fehler beim Laden!")
		Else
			GUICtrlSetState($Gefaehrte_1                , FileReadLine($fHnd))
			GUICtrlSetState($Gefaehrte_2                , FileReadLine($fHnd))
			GUICtrlSetState($Gefaehrte_3                , FileReadLine($fHnd))
			GUICtrlSetData($Job_1                      , FileReadLine($fHnd))
			GUICtrlSetData($Job_2                      , FileReadLine($fHnd))
			GUICtrlSetData($Job_3                      , FileReadLine($fHnd))
			GUICtrlSetData($Mission_1                  , FileReadLine($fHnd))
			GUICtrlSetData($Mission_2                  , FileReadLine($fHnd))
			GUICtrlSetData($Mission_3                  , FileReadLine($fHnd))
			GUICtrlSetData($PosGefaehrte1Job1          , FileReadLine($fHnd))
			GUICtrlSetData($PosGefaehrte1Job2          , FileReadLine($fHnd))
			GUICtrlSetData($PosGefaehrte2Job1          , FileReadLine($fHnd))
			GUICtrlSetData($PosMission1                , FileReadLine($fHnd))
			GUICtrlSetData($PosMission2                , FileReadLine($fHnd))
			GUICtrlSetData($PosMissionsannahme         , FileReadLine($fHnd))
			GUICtrlSetData($PosAbschlussAktivieren     , FileReadLine($fHnd))
			GUICtrlSetData($PosAbschlussBestaetigen    , FileReadLine($fHnd))
			GUICtrlSetState($radionBewegungRandomisieren, FileReadLine($fHnd))
			GUICtrlSetState($radioWartezeit             , FileReadLine($fHnd))
			GUICtrlSetData($RandomisierungMin          , FileReadLine($fHnd))
			GUICtrlSetData($RandomisierungMax          , FileReadLine($fHnd))
			GUICtrlSetData($Mausgeschwindigkeit        , FileReadLine($fHnd))
			GUICtrlSetData($PosMisserfolg              , FileReadLine($fHnd))
		EndIf

		FileClose($fHnd)
	EndIf
EndFunc

Func Erfassen()
	Local $Erfasst = False

	AnNutzer("", "Erfassung gestartet")

	While Not $Erfasst
		Local $MausPos = MouseGetPos()
		Local $PixelFarbe = PixelGetColor($MausPos[0], $MausPos[1])

		AnStd("Warte auf Klick...")

		If IsMausClick() Then
			ReDim $Eintraege[$AnzahlEintraege * $INDIZES_JE_EINTRAG + $INDIZES_JE_EINTRAG]
			$Eintraege[$AnzahlEintraege * $INDIZES_JE_EINTRAG + 0] = $PixelFarbe
			$Eintraege[$AnzahlEintraege * $INDIZES_JE_EINTRAG + 1] = $MausPos[0]
			$Eintraege[$AnzahlEintraege * $INDIZES_JE_EINTRAG + 2] = $MausPos[1]

			$Erfasst = True
			$AnzahlEintraege += 1
			AnNutzer("Erfassung beendet", Hex($PixelFarbe) & @CRLF & $MausPos[0] & @CRLF & $MausPos[1])
		EndIf
	WEnd
EndFunc

; Gibt die Mausposition beim Klick zurück
; Array[0]: X
; Array[1]: Y
Func PositionErfassung()
	Local $Erfasst = False

	AnNutzer("", "Erfassung gestartet")

	While Not $Erfasst
		Local $MausPos = MouseGetPos()
		;Local $PixelFarbe = PixelGetColor($MausPos[0], $MausPos[1])

		AnStd("Warte auf Klick...")

		If IsMausClick() Then
			$Erfasst = True
			AnNutzer("Erfassung beendet", $MausPos[0] & @CRLF & $MausPos[1])

			Return $MausPos
		EndIf
	WEnd
EndFunc

; Gibt die Position für den Klick zurück
; Array[0]: X
; Array[1]: Y
Func PositionVonCtrl($ctrl)
	Local $val = GUICtrlRead($ctrl)
	Return StringSplit($val, $POS_TRENNER, $STR_ENTIRESPLIT + $STR_NOCOUNT)
EndFunc

Func PositionErfassungAufCtrl($ctrl)
	Local $arr = PositionErfassung()
	PositionAufCtrl($ctrl, $arr)
EndFunc

Func PositionAufCtrl($ctrl, $pos)
	GUICtrlSetData($ctrl, $pos[0] & $POS_TRENNER & $pos[1])
EndFunc

Func IsMausClick()
    For $i = 1 to 6
		If _IsPressed($i) Then Return True
	Next

	Return False
EndFunc

Func Start()
	If Not $Aktiv Then
		$Aktiv = True
		AnNutzer("Gefährtenlevler", "Aktiviert")

		KlickerAusfuehren()
	EndIf
EndFunc

Func Stop()
	$Aktiv = False
	AnNutzer("Gefährtenlevler", "Deaktiviert")
EndFunc

Func AnNutzer($ueberschrift, $msg)
	TrayTip($ueberschrift, $msg, $TRAYTIP_TIMEOUT)
	AnStd($ueberschrift & ": " & $msg)
EndFunc

Func AnStd($msg)
	ConsoleWrite($msg & @CRLF)
EndFunc