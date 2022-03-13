#include <AutoItConstants.au3>
#include <FileConstants.au3>
#include <MsgBoxConstants.au3>
#include <Misc.au3>

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
WEnd

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
	$Aktiv = True
	AnNutzer("Gefährtenlevler", "Aktiviert")
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