#include <AutoItConstants.au3>
#include <FileConstants.au3>
#include <MsgBoxConstants.au3>
#include <Misc.au3>
#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>

#Region ### START Koda GUI section ### Form=d:\dropbox\programmierung\windows\gefaehrtenlevler#142\swtor_autoclicker\haupt.kxf
$Haupt = GUICreate("SWTOR Autoklicker", 665, 396, 819, 510)
$Menue_Datei = GUICtrlCreateMenu("&Datei")
$btnSpeichern = GUICtrlCreateMenuItem("Speichern...", $Menue_Datei)
$btnLaden = GUICtrlCreateMenuItem("Laden...", $Menue_Datei)
$Positionen = GUICtrlCreateGroup("Positionskonfiguration", 8, 128, 417, 241)
$PosGefaehrten = GUICtrlCreateGroup("Gefährten", 16, 144, 161, 73)
$btnErfassenGefaehrte1 = GUICtrlCreateButton("1 Erfassen", 24, 160, 75, 25)
$PosGefaherte1 = GUICtrlCreateInput("", 104, 162, 65, 21)
GUICtrlSetState(-1, $GUI_DISABLE)
$btnErfassenGefaehrte2 = GUICtrlCreateButton("2 Erfassen", 24, 184, 75, 25)
$PosGefaherte2 = GUICtrlCreateInput("", 104, 186, 65, 21)
GUICtrlSetState(-1, $GUI_DISABLE)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$PosJobs = GUICtrlCreateGroup("Jobs", 16, 216, 161, 73)
$btnErfassenJob1 = GUICtrlCreateButton("1 Erfassen", 24, 232, 75, 25)
$PosJob1 = GUICtrlCreateInput("", 104, 234, 65, 21)
GUICtrlSetState(-1, $GUI_DISABLE)
$btnErfassenJob2 = GUICtrlCreateButton("2 Erfassen", 24, 256, 75, 25)
$PosJob2 = GUICtrlCreateInput("", 104, 258, 65, 21)
GUICtrlSetState(-1, $GUI_DISABLE)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$PosMissionen = GUICtrlCreateGroup("Missionen", 16, 288, 161, 73)
$btnErfassenMission1 = GUICtrlCreateButton("1 Erfassen", 24, 304, 75, 25)
$PosMission1 = GUICtrlCreateInput("", 104, 306, 65, 21)
GUICtrlSetState(-1, $GUI_DISABLE)
$btnErfassenMission2 = GUICtrlCreateButton("2 Erfassen", 24, 328, 75, 25)
$PosMission2 = GUICtrlCreateInput("", 104, 330, 65, 21)
GUICtrlSetState(-1, $GUI_DISABLE)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Sonstiges = GUICtrlCreateGroup("Sonstiges", 184, 144, 233, 97)
$btnErfassenMissionsannahme = GUICtrlCreateButton("Missionsannahme erfassen", 192, 160, 147, 25)
$PosMissionsannahme = GUICtrlCreateInput("", 344, 162, 65, 21)
GUICtrlSetState(-1, $GUI_DISABLE)
$PosAbschlussAktivieren = GUICtrlCreateInput("", 344, 186, 65, 21)
GUICtrlSetState(-1, $GUI_DISABLE)
$btnErfassenAbschlussAktivieren = GUICtrlCreateButton("Abschluss aktivieren erfassen", 192, 184, 147, 25)
$btnErfassenAbschlussBestaetigen = GUICtrlCreateButton("Abschluss bestätigen erfassen", 192, 208, 147, 25)
$PosAbschlussBestaetigen = GUICtrlCreateInput("", 344, 210, 65, 21)
GUICtrlSetState(-1, $GUI_DISABLE)
GUICtrlCreateGroup("", -99, -99, 1, 1)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Auswahlen = GUICtrlCreateGroup("Auswahlkonfiguration", 8, 0, 417, 121)
$Missionen = GUICtrlCreateGroup("Missionswahrscheinlichkeiten", 256, 16, 161, 97)
$Label4 = GUICtrlCreateLabel("Mission 1", 264, 40, 48, 17)
$Mission_1 = GUICtrlCreateInput("0.333", 320, 36, 89, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_NUMBER))
$Label5 = GUICtrlCreateLabel("Mission 2", 264, 64, 48, 17)
$Label6 = GUICtrlCreateLabel("Mission 3", 264, 88, 48, 17)
$Mission_2 = GUICtrlCreateInput("0.333", 320, 60, 89, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_NUMBER))
$Mission_3 = GUICtrlCreateInput("0.333", 320, 84, 89, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_NUMBER))
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Jobs = GUICtrlCreateGroup("Job Wahrscheinlichkeiten", 112, 16, 137, 97)
$Label1 = GUICtrlCreateLabel("Job 1", 120, 40, 30, 17)
$Job_1 = GUICtrlCreateInput("0.333", 152, 36, 89, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_NUMBER))
$Label2 = GUICtrlCreateLabel("Job 2", 120, 64, 30, 17)
$Label3 = GUICtrlCreateLabel("Job 3", 120, 88, 30, 17)
$Job_2 = GUICtrlCreateInput("0.333", 152, 60, 89, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_NUMBER))
$Job_3 = GUICtrlCreateInput("0.333", 152, 84, 89, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_NUMBER))
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Gefaehrten = GUICtrlCreateGroup("Gefährten", 16, 16, 89, 97)
$Gefaehrte_1 = GUICtrlCreateCheckbox("Gefährte 1", 24, 40, 73, 17)
$Gefaehrte_2 = GUICtrlCreateCheckbox("Gefährte 2", 24, 64, 73, 17)
$Gefaehrte_3 = GUICtrlCreateCheckbox("Gefährte 3", 24, 88, 73, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Kontrollen = GUICtrlCreateGroup("Kontrollkonfiguration", 432, 0, 225, 369)
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
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

; ^ CTRL
; + SHIFT
; ! ALT
HotKeySet("^{F5}", "Speichern")
HotKeySet("^{F9}", "Laden")
HotKeySet("^{F10}", "Erfassen")
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

Global $AnzahlEintraege = 0
Global $Eintraege[1] = [0] ; Jeder Eintrag besitzt: 0: Farbe für Click 1: X-Koordinate 2: Y-Koordinate
Global $Aktiv = False

While True
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit

		Case $btnSpeichern
			Speichern()
		Case $btnLaden
			Laden()

		Case $btnErfassenGefaehrte1
		Case $btnErfassenGefaehrte2
		Case $btnErfassenJob1
		Case $btnErfassenJob2
		Case $btnErfassenMission1
		Case $btnErfassenMission2
		Case $btnErfassenMissionsannahme
		Case $btnErfassenAbschlussAktivieren
		Case $btnErfassenAbschlussBestaetigen
	EndSwitch
WEnd

Func KlickerAusfuehren()
	If $Aktiv Then
		AnStd("Einträge iterieren")

		For $IndexEintrag = 0 To $AnzahlEintraege * $INDIZES_JE_EINTRAG - 1 Step $INDIZES_JE_EINTRAG
			If $Aktiv Then
				AnStd("Eintrag: " & $IndexEintrag / $INDIZES_JE_EINTRAG + 1)

				; Maus an richtige Stelle bringen
				Local $MausPos = MouseGetPos()
				While Not (($MausPos[0] = $Eintraege[$IndexEintrag + 1]) And ($MausPos[1] = $Eintraege[$IndexEintrag + 2]))
					MouseMove($Eintraege[$IndexEintrag + 1], $Eintraege[$IndexEintrag + 2], $MAUS_GESCHWINDIGKEIT)
					$MausPos = MouseGetPos()
				Wend

;~ 				If PixelGetColor($MausPos[0], $MausPos[1]) = $Eintraege[$IndexEintrag + 0] Then
;~ 					; Farbe an Position passt: Click ausführen
;~ 					AnStd("Übereinstimmung: Klick ausführen")
;~ 					MouseClick($MOUSE_CLICK_PRIMARY)
;~ 					Sleep(Random($MIN_WARTEZEIT, $MAX_WARTEZEIT, 1))
;~ 				Else
;~ 					AnStd("Keine Übereinstimmung")
;~ 					Sleep(Random($MIN_WARTEZEIT, $MAX_WARTEZEIT, 1))
;~ 				EndIf

				MouseClick($MOUSE_CLICK_PRIMARY)

				If $MAUS_RANDOMISIEREN Then
					MausbewegungRandomisieren()
				Else
					Sleep(Random($MIN_WARTEZEIT * 25, $MAX_WARTEZEIT * 25, 1))
				EndIf
			EndIf
		Next
	EndIf
EndFunc

Func MausbewegungRandomisieren()
	For $i = 0 To Random($MIN_WARTEZEIT, $MAX_WARTEZEIT, 1)
		If $Aktiv Then
			Local $MausPos = MouseGetPos()
			MouseMove($MausPos[0] + Random(-$MAUS_RANDOMISIERUNGS_GRENZWERT, $MAUS_RANDOMISIERUNGS_GRENZWERT, 1), $MausPos[1] + Random(-$MAUS_RANDOMISIERUNGS_GRENZWERT, $MAUS_RANDOMISIERUNGS_GRENZWERT, 1), Random(2, $MAUS_GESCHWINDIGKEIT, 1))
		EndIf
	Next
EndFunc

Func Speichern()
	Local $fName = InputBox("Speichern", "Dateiname:", "default.dat")
	If @error = 0 Then
		$fHnd = FileOpen($fName, $FO_APPEND)

		For $IndexEintrag = 0 To $AnzahlEintraege * $INDIZES_JE_EINTRAG - 1 Step $INDIZES_JE_EINTRAG
			If Not FileWriteLine($fHnd, $Eintraege[$IndexEintrag + 0]) Then FehlerSpeichern()
			If Not FileWriteLine($fHnd, $Eintraege[$IndexEintrag + 1]) Then FehlerSpeichern()
			If Not FileWriteLine($fHnd, $Eintraege[$IndexEintrag + 2]) Then FehlerSpeichern()
		Next

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
			$Eintraege = FileReadToArray($fHnd)
			$AnzahlEintraege = @extended / 3
			AnStd("Geladen: " & $AnzahlEintraege)
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