;Gets trophy count of village and compares to max trophy input.
;Will drop a troop and return home with no screenshot or gold wait.

Func DropTrophy()
	Local $TrophyCount = getOther(50, 74, "Trophy")
	While Number($TrophyCount) > Number($itxtMaxTrophy)
		$TrophyCount = getOther(50, 74, "Trophy")
		SetLog("Trophy Count : " & $TrophyCount, $COLOR_GREEN)
		If Number($TrophyCount) > Number($itxtMaxTrophy) Then
			SetLog("Dropping Trophies", $COLOR_BLUE)
			If _Sleep(2000) Then ExitLoop

			ZoomOut()
			PrepareSearch()

			If _Sleep(5000) Then ExitLoop

			Click(34, 310) ;Drop one troop

			If _Sleep(1000) Then ExitLoop

			ReturnHome(False, False) ;Return home no screenshot
		Else
			SetLog("Trophy Drop Complete", $COLOR_BLUE)
		EndIf
	WEnd
EndFunc   ;==>DropTrophy