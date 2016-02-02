; #FUNCTION# ====================================================================================================================
; Name ..........: StartUDPClient
; Description ...: Start UDP client in order send Stadistics to Logstash UDP port
; Syntax ........: StartUDPClient()
; Parameters ....:
; Return values .: None
; Author ........:
; Modified ......:
; Remarks .......: 
; Related .......:
; Link ..........: https://github.com/MyBotRun/MyBot/wiki
; Example .......: No
; ===============================================================================================================================
Func StartUDPClient() 
    Local iError=@error
	UDPStartup() ; Start the UDP service.
	$aSocket = UDPOpen("192.168.2.72", 5046)
	; If an error occurred display the error code and return False.
	If @error Then
		$iError = @error
		SetLog("Error Connecting UDP Server " & $iError, $COLOR_RED)
		Return False
	EndIf
	Return True
EndFunc   ;==>StartUDPClient

; #FUNCTION# ====================================================================================================================
; Name ..........: SendELKStats
; Description ...: Send Stats to Logstash Server
; Syntax ........: SendELKStats($sStats)
; Parameters ....:
; Return values .: None
; Author ........:
; Modified ......:
; Remarks .......: 
; Related .......:
; Link ..........: https://github.com/MyBotRun/MyBot/wiki
; Example .......: No
; ===============================================================================================================================
Func SendELKStats($sStats) 
    Local iError=@error
	; Send the string "tata" to the server.
	UDPSend($aSocket, $sStats)
	If @error Then
		$iError = @error
		SetLog("Error Sending Stats Data to Logstash " & $iError, $COLOR_RED)
		Return False
	EndIf
	SetLog("Send Stats to LogStash Server " & $iError, $COLOR_RED)
	Return True
EndFunc   ;==>SendELKStats