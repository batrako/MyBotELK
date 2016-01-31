; #FUNCTION# ====================================================================================================================
; Name ..........: MBR GUI Control
; Description ...: This file Includes all functions to current GUI
; Syntax ........:
; Parameters ....: None
; Return values .: None
; Author ........: GkevinOD (2014)
; Modified ......: Hervidero (2015), kaganus (August 2015)
; Remarks .......: This file is part of MyBot, previously known as ClashGameBot. Copyright 2015-2016
;                  MyBot is distributed under the terms of the GNU GPL
; Related .......:
; Link ..........: https://github.com/MyBotRun/MyBot/wiki
; Example .......: No
; ===============================================================================================================================

Func btnLoots()
	Run("Explorer.exe " & $sProfilePath & "\" & $sCurrProfile & "\Loots")
EndFunc   ;==>btnLoots

Func btnLogs()
	Run("Explorer.exe " & $sProfilePath & "\" & $sCurrProfile & "\Logs")
EndFunc   ;==>btnLogs

Func btnResetStats()
	ResetStats()
EndFunc

Func txtAPIKey()
   $stxtAPIKey  = GUICtrlRead($txtAPIKey)
   IniWrite($config, "Stats", "txtAPIKey", $stxtAPIKey)
   $MyApiKey = $stxtAPIKey
EndFunc ;==> txtAPIKey

 Func chkCoCStats()
   If GUICtrlRead($chkCoCStats) = $GUI_CHECKED Then
	  $ichkCoCStats = 1
	  GUICtrlSetState($txtAPIKey, $GUI_ENABLE)
   Else
	  $ichkCoCStats = 0
	  GUICtrlSetState($txtAPIKey, $GUI_DISABLE)
EndIf
IniWrite($config, "Stats", "chkCoCStats",$ichkCoCStats)
EndFunc ;==> chkCoCStats
