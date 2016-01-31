; #FUNCTION# ====================================================================================================================
; Name ..........: CreateLogFile
; Description ...:
; Syntax ........: CreateLogFile()
; Parameters ....:
; Return values .: None
; Author ........:
; Modified ......:
; Remarks .......: This file is part of MyBot, previously known as ClashGameBot. Copyright 2015-2016
;                  MyBot is distributed under the terms of the GNU GPL
; Related .......:
; Link ..........: https://github.com/MyBotRun/MyBot/wiki
; Example .......: No
; ===============================================================================================================================
Func CreateLogFile()
    if $hLogFileHandle<>"" Then
		FileClose($hLogFileHandle)
		$hLogFileHandle = ""
	EndIf
    $sLogFName = @YEAR & "-" & @MON & "-" & @MDAY & "_" & @HOUR & "." & @MIN & "." & @SEC & ".log"
	$sLogPath = $dirLogs & $sLogFName
	$hLogFileHandle = FileOpen($sLogPath, $FO_APPEND)
EndFunc   ;==>CreateLogFile

; #FUNCTION# ====================================================================================================================
; Name ..........: CreateAttackLogFile
; Description ...:
; Syntax ........: CreateAttackLogFile()
; Parameters ....:
; Return values .: None
; Author ........:
; Modified ......:
; Remarks .......: This file is part of MyBot, previously known as ClashGameBot. Copyright 2015-2016
;                  MyBot is distributed under the terms of the GNU GPL
; Related .......:
; Link ..........: https://github.com/MyBotRun/MyBot/wiki
; Example .......: No
; ===============================================================================================================================
Func CreateAttackLogFile()
    If $hAttackLogFileHandle <>"" Then
		FileClose($hAttackLogFileHandle)
		$hAttackLogFileHandle=""
	EndIf
    $sAttackLogFName = "AttackLog" & "-"& @YEAR & "-" & @MON & ".log"
	$sAttackLogPath = $dirLogs & $sAttackLogFName
	$hAttackLogFileHandle = FileOpen($sAttackLogPath, $FO_APPEND)
 EndFunc   ;==>CreateAttackLogFile


; #FUNCTION# ====================================================================================================================
; Name ..........: CreateStatsLogFile
; Description ...:
; Syntax ........: CreateStatsLogFile()
; Parameters ....:
; Return values .: None
; Author ........:
; Modified ......:
; Remarks .......: This file is part of MyBot, previously known as ClashGameBot. Copyright 2015-2016
;                  MyBot is distributed under the terms of the GNU GPL
; Related .......:
; Link ..........: https://github.com/MyBotRun/MyBot/wiki
; Example .......: No
; ===============================================================================================================================
Func CreateStatsLogFile()
    If $hStatsLogFileHandle <>"" Then
		FileClose($hStatsLogFileHandle)
		$hStatsLogFileHandle=""
	EndIf
    $sStatsLogFName = "StatsLog" & "-"& @YEAR & "-" & @MON & ".log"
	$sStatsLogPath = $dirLogs & $sStatsLogFName
	$hStatsLogFileHandle = FileOpen($sStatsLogPath, $FO_APPEND)
EndFunc   ;==>CreateStatsLogFile