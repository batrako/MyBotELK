; #FUNCTION# ====================================================================================================================
; Name ..........: MBR GUI Design
; Description ...: This file Includes GUI Design
; Syntax ........:
; Parameters ....: None
; Return values .: None
; Author ........: GKevinOD (2014)
; Modified ......: DkEd, Hervidero (2015), Promac (2015)
; Remarks .......: This file is part of MyBot, previously known as ClashGameBot. Copyright 2015-2016
;                  MyBot is distributed under the terms of the GNU GPL
; Related .......:
; Link ..........: https://github.com/MyBotRun/MyBot/wiki
; Example .......: No
; ===============================================================================================================================

;~ -------------------------------------------------------------
;~ Attack Advanced Tab
;~ -------------------------------------------------------------
 $tabAttackAdv = GUICtrlCreateTabItem(GetTranslated(4,1, "Attack Adv."))
	Local $x = 30, $y = 150
	$grpAtkOptions = GUICtrlCreateGroup(GetTranslated(4,2, "Attack Options"), $x - 20, $y - 20, 220, 85)
		$y -=5
		$chkAttackNow = GUICtrlCreateCheckbox(GetTranslated(4,3, "Attack Now! option."), $x-10, $y, -1, -1)
			$txtTip = GetTranslated(4,4, "Check this if you want the option to have an 'Attack Now!' button next to") & @CRLF & GetTranslated(4,5, "the Start and Pause buttons to bypass the dead base or all base search values.") & @CRLF & GetTranslated(4,6, "The Attack Now! button will only appear when searching for villages to Attack.")
			GUICtrlSetTip(-1, $txtTip)
			GUICtrlSetOnEvent(-1, "chkAttackNow")
		$y +=22
		$lblAttackNow = GUICtrlCreateLabel(GetTranslated(4,7, "Add") & ":", $x - 10, $y + 4, 27, -1, $SS_RIGHT)
			$txtTip = GetTranslated(4,8, "Add this amount of reaction time to slow down the search.")
			GUICtrlSetTip(-1, $txtTip)
			GUICtrlSetState(-1, $GUI_DISABLE)
		$cmbAttackNowDelay = GUICtrlCreateCombo("", $x + 20, $y + 1, 35, 25, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
			GUICtrlSetTip(-1, $txtTip)
			GUICtrlSetData(-1, "5|4|3|2|1","3") ; default value 3
			GUICtrlSetState(-1, $GUI_DISABLE)
		$lblAttackNowSec = GUICtrlCreateLabel(GetTranslated(4,9, "sec. delay"), $x + 57, $y + 4, -1, -1)
			GUICtrlSetTip(-1, $txtTip)
			GUICtrlSetState(-1, $GUI_DISABLE)
		$y +=22
		$chkAttackTH = GUICtrlCreateCheckbox(GetTranslated(4,10, "Attack Townhall Outside"), $x-10, $y, -1, -1)
			GUICtrlSetTip(-1, GetTranslated(4,11, "Check this to Attack an exposed Townhall first. (Townhall outside of Walls)") & @CRLF & GetTranslated(4,12, "TIP: Also tick 'Meet Townhall Outside' on the Search tab if you only want to search for bases with exposed Townhalls."))

	GUICtrlCreateGroup("", -99, -99, 1, 1)


	Local $x = 255, $y = 150
	$grpTHSnipeWhileTrainOptions = GUICtrlCreateGroup(GetTranslated(4,13, "TH Snipe"), $x - 20, $y - 20, 225, 375)

		$y -=5
		$ChkSnipeWhileTrain = GUICtrlCreateCheckbox(GetTranslated(4,14, "Snipe While Train"), $x-10, $y, -1, -1)
			$txtTip = GetTranslated(4,15, "Check this if you want the bot search TH outsite while train troops.")
			GUICtrlSetTip(-1, $txtTip)
			GUICtrlSetOnEvent(-1, "chkSnipeWhileTrain")
		$lblSWTTiles = GUICtrlCreateLabel(GetTranslated(4,16, "Add Tiles") & ":", $x + 67, $y + 4, 100, -1, $SS_RIGHT)
			$txtTip = GetTranslated(4,17, "Add number of tiles from Base Edges")
			GUICtrlSetTip(-1, $txtTip)
			GUICtrlSetState(-1, $GUI_DISABLE)
		$txtSWTTiles = GUICtrlCreateInput("1", $x + 170, $y, 25, 18, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
			GUICtrlSetTip(-1, $txtTip)
			GUICtrlSetLimit(-1, 2)
			GUICtrlSetState(-1, $GUI_DISABLE)
		$y +=22
		$lblSearchlimit = GUICtrlCreateLabel(GetTranslated(4,18, "Search limit") & ":", $x + 95, $y + 4, 72, -1, $SS_RIGHT)
			$txtTip = GetTranslated(4,19, "Maximum searches first to return to home.")
			GUICtrlSetTip(-1, $txtTip)
			GUICtrlSetState(-1, $GUI_DISABLE)
		$txtSearchlimit = GUICtrlCreateInput("15", $x + 170, $y, 25, 18, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
			GUICtrlSetTip(-1, $txtTip)
			GUICtrlSetLimit(-1, 3)
			GUICtrlSetState(-1, $GUI_DISABLE)
		$y +=22
		$lblminArmyCapacityTHSnipe = GUICtrlCreateLabel(GetTranslated(4,20, "Min Army Capacity % to start Snipe") & ":", $x - 10, $y + 4, 177, -1, $SS_RIGHT)
			$txtTip = GetTranslated(4,21, "Minimum Army Capacity to start Snipe.")
			GUICtrlSetTip(-1, $txtTip)
			GUICtrlSetState(-1, $GUI_DISABLE)
		$txtminArmyCapacityTHSnipe = GUICtrlCreateInput("35", $x + 170, $y, 25, 18, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
			GUICtrlSetTip(-1, $txtTip)
			GUICtrlSetLimit(-1, 2)
			GUICtrlSetState(-1, $GUI_DISABLE)
		$y +=27
		$chkTrophyMode = GUICtrlCreateCheckbox(GetTranslated(4,23, "Snipe Combo"), $x-10, $y, -1, -1)
			$txtTip = GetTranslated(4,24, "Adds the TH Snipe combination to the current search settings. (Example: Deadbase OR TH Snipe)")
			GUICtrlSetTip(-1, $txtTip)
			GUICtrlSetOnEvent(-1, "chkSnipeMode")
		$y+= 25
		$lblTHadd = GUICtrlCreateLabel(GetTranslated(4,25, "Add") & ":", $x -10, $y+5, -1, 17, $SS_RIGHT)
		    $txtTip = GetTranslated(4,26, "Enter how many 'Grass' 1x1 tiles the TH may be from the Base edges to be seen as a TH Outside.") & @CRLF & GetTranslated(4,27, "Ex: (0) tiles; TH must be exactly at the edge. (4) tiles: TH may be 4 tiles farther from edges and closer to the center of the village.") & @CRLF & GetTranslated(4,28, "If the TH is farther away then the No. of tiles set, the base will be skipped.")
			GUICtrlSetTip(-1, $txtTip)
		$lblTHaddtiles = GUICtrlCreateLabel(GetTranslated(4,29, "tile(s) from Base Edges"), $x + 57, $y+5, -1, 17)
		    GUICtrlSetTip(-1, $txtTip)
		$txtTHaddtiles = GUICtrlCreateInput("2", $x + 26, $y + 1, 25, 18, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
			GUICtrlSetTip(-1, $txtTip)
			GUICtrlSetLimit(-1, 1)
			GUICtrlSetState(-1, $GUI_DISABLE)

		$x += 18
		$y += 25
		$chkTSEnableAfter = GUICtrlCreateCheckbox(GetTranslated(4,99, "Delay Start"), $x, $y, -1, -1)
			$txtTip = GetTranslated(4,100, "Search for a TH Snipe after this No. of searches, start searching for Live Bases first..")
			GUICtrlSetTip(-1, $txtTip)
			GUICtrlSetOnEvent(-1, "chkTSEnableAfter")
			GUICtrlSetState(-1, $GUI_DISABLE)
		$txtTSEnableAfter = GUICtrlCreateInput("50", $x + 80, $y, 50, 18, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
			$txtTip = GetTranslated(4,101, "No. of searches to wait before activating this mode.")
			GUICtrlSetLimit(-1, 3)
			GUICtrlSetTip(-1, $txtTip)
			_GUICtrlEdit_SetReadOnly(-1, True)
			GUICtrlSetState(-1, $GUI_DISABLE)
		$lblTSEnableAfter = GUICtrlCreateLabel(GetTranslated(4,102, "search(es)."), $x + 132, $y + 4, -1, -1)
			GUICtrlSetTip(-1, $txtTip)
		$y += 21
		$cmbTSMeetGE = GUICtrlCreateCombo("", $x , $y + 10, 65, -1, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
			$txtTip = GetTranslated(4,103, "Search for a base that meets the values set for Gold And/Or/Plus Elixir.") & @CRLF & GetTranslated(4,104, "AND: Both conditions must meet, Gold and Elixir.") & @CRLF & GetTranslated(4,105, "OR: One condition must meet, Gold or Elixir.") & @CRLF & GetTranslated(4,106, "+ (PLUS): Total amount of Gold + Elixir must meet.")
			GUICtrlSetData(-1, GetTranslated(4,107, "G And E") &"|" & GetTranslated(4,108, "G Or E") & "|" & GetTranslated(4,109, "G + E"), GetTranslated(4,107, "G And E"))
			GUICtrlSetTip(-1, $txtTip)
			GUICtrlSetOnEvent(-1, "cmbTSGoldElixir")
			GUICtrlSetState(-1, $GUI_DISABLE)
		$txtTSMinGold = GUICtrlCreateInput("80000", $x + 80, $y, 50, 18, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
			$txtTip = GetTranslated(4,110, "Set the Min. amount of Gold to search for on a village to attack.")
			GUICtrlSetTip(-1, $txtTip)
			GUICtrlSetLimit(-1, 6)
			GUICtrlSetState(-1, $GUI_DISABLE)
		$picTSMinGold = GUICtrlCreateIcon($pIconLib, $eIcnGold, $x + 131, $y, 16, 16)
			GUICtrlSetTip(-1, $txtTip)
		$y += 21
		$txtTSMinElixir = GUICtrlCreateInput("80000", $x + 80, $y, 50, 18, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
			$txtTip = GetTranslated(4,111, "Set the Min. amount of Elixir to search for on a village to attack.")
			GUICtrlSetTip(-1, $txtTip)
			GUICtrlSetLimit(-1, 6)
			GUICtrlSetState(-1, $GUI_DISABLE)
		$picTSMinElixir = GUICtrlCreateIcon($pIconLib, $eIcnElixir, $x + 131, $y, 16, 16)
			GUICtrlSetTip(-1, $txtTip)
		$y -= 11
		$txtTSMinGoldPlusElixir = GUICtrlCreateInput("160000", $x + 80, $y, 50, 20, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
			$txtTip = GetTranslated(4,112, "Set the Min. amount of Gold + Elixir to search for on a village to attack.")
			GUICtrlSetTip(-1, $txtTip)
			GUICtrlSetLimit(-1, 6)
			GUICtrlSetState (-1, $GUI_HIDE)
		$picTSMinGPEGold = GUICtrlCreateIcon($pIconLib, $eIcnGold, $x + 131, $y + 1, 16, 16)
			GUICtrlSetTip(-1, $txtTip)
			GUICtrlSetState (-1, $GUI_HIDE)
		$lblTSMinGPE = GUICtrlCreateLabel("+", $x + 147, $y + 1, -1, -1)
			GUICtrlSetTip(-1, $txtTip)
			GUICtrlSetState (-1, $GUI_HIDE)
		$picTSMinGPEElixir = GUICtrlCreateIcon($pIconLib, $eIcnElixir, $x + 153, $y + 1, 16, 16)
			GUICtrlSetTip(-1, $txtTip)
			GUICtrlSetState (-1, $GUI_HIDE)
		$y += 31
		$chkTSMeetDE = GUICtrlCreateCheckbox(GetTranslated(4,113, "Dark Elixir"), $x , $y, -1, -1)
			$txtTip = GetTranslated(4,114, "Search for a base that meets the value set for Min. Dark Elixir.")
			GUICtrlSetOnEvent(-1, "chkTSMeetDE")
			GUICtrlSetTip(-1, $txtTip)
			GUICtrlSetState(-1, $GUI_DISABLE)
		$txtTSMinDarkElixir = GUICtrlCreateInput("600", $x + 80, $y, 50, 18, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
			$txtTip = GetTranslated(4,115, "Set the Min. amount of Dark Elixir to search for on a village to attack.")
			GUICtrlSetTip(-1, $txtTip)
			GUICtrlSetLimit(-1, 5)
			_GUICtrlEdit_SetReadOnly(-1, True)
			GUICtrlSetState(-1, $GUI_DISABLE)
		$picTSMinDarkElixir = GUICtrlCreateIcon($pIconLib, $eIcnDark, $x + 131, $y, 16, 16)
			GUICtrlSetTip(-1, $txtTip)

		$x -= 18
		$y += 30
;~ 		$lblAttackTHType = GUICtrlCreateLabel(GetTranslated(4,30, "Attack TH Type") & ":", $x - 8 , $y + 5 , -1, 17, $SS_RIGHT)
;~ 		$cmbAttackTHType = GUICtrlCreateCombo("",  $x + 80, $y, 120, 21, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
;~ 			GUICtrlSetData(-1, GetTranslated(4,31, "Attack: SmartBarch") & "|" & GetTranslated(4,32, "Attack: Bam") & "|" & GetTranslated(4,33, "Attack: eXtreme") & "|" & GetTranslated(4,34, "Attack: GBarch") & "|" & GetTranslated(4,35, "Attack: Custom"), GetTranslated(4,34, -1))
;~             $txtTip = GetTranslated(4,36, "SMARTBARCH • Barbs/Archers") & @CRLF & GetTranslated(4,37, "BAM • Barbs/Archers/Minions") & @CRLF & GetTranslated(4,38, "EXTREME • Use All troops") & @CRLF & GetTranslated(4,39, "GBARCH • Giants/Barbs/Archers")& @CRLF & GetTranslated(4,40, "CUSTOM • Make your own strategy!")
;~ 		$y+= 30
;~ 		$lblAttackTHType = GUICtrlCreateLabel("Attack TH Type:", $x - 8 , $y + 5 , -1, 17, $SS_RIGHT)
;~ 		$cmbAttackTHType = GUICtrlCreateCombo("",  $x + 80, $y, 120, 21, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
;~ 			GUICtrlSetData(-1, "Attack: SmartBarch|Attack: Bam|Attack: eXtreme|Attack: GBarch|Attack: Custom", "Attack: GBarch")
;~             $txtTip = "SMARTBARCH � Barbs/Archers" & @CRLF & "BAM � Barbs/Archers/Minions" & @CRLF & "EXTREME � Use All troops" & @CRLF & "GBARCH � Giants/Barbs/Archers"& @CRLF & "CUSTOM � Make your own strategy!"
;~ 			GUICtrlSetTip(-1, $txtTip)
;~ 			GUICtrlSetState(-1, $GUI_DISABLE)
		$lblAttackTHType = GUICtrlCreateLabel(GetTranslated(4,30, "Attack TH Type") & ":", $x - 15 , $y + 5 , 90, -1, $SS_RIGHT)
		$cmbAttackTHType = GUICtrlCreateCombo("",  $x + 80, $y, 120, 21, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
			GUICtrlSetData(-1, "")
            $txtTip = GetTranslated(4,98, "You can add/edit attack editing csv settings files in THSnipe folder")
			GUICtrlSetTip(-1, $txtTip)
			GUICtrlSetState(-1, $GUI_DISABLE)
			GUICtrlSetOnEvent(-1, "cmbAttackTHType")
			LoadThSnipeAttacks()

        $y +=25
;~ 		$lblAttackBottomType = GUICtrlCreateLabel(GetTranslated(4,41, "If TH is at bottom") & ":", $x -15 , $y + 5, 90, -1, $SS_RIGHT)
;~ 		$cmbAttackbottomType = GUICtrlCreateCombo("",  $x + 80, $y, 120, 21, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
;~ 			GUICtrlSetData(-1, GetTranslated(4,42, "Deploy: Zoomed In")&"|" & GetTranslated(4,43, "Deploy: On Sides"), GetTranslated(4,43, -1))
;~ 			$txtTip = GetTranslated(4,44, "Select your strategy to deploy troops when the TH is detected on the Bottom of the screen!") & @CRLF & GetTranslated(4,45, "Zoomed in • Zoom in first, then Attack from bottom.") & @CRLF & GetTranslated(4,46, "On Sides • Try to get the TH from the left and right without zooming in, your troops may pick another target!")
;~ 			GUICtrlSetTip(-1, $txtTip)
;~ 			GUICtrlSetState(-1, $GUI_DISABLE)
		$y += 30
		GUICtrlCreateIcon($pIconLib, $eIcnKing, $x - 16 , $y, 24, 24)
		$chkUseKingTH = GUICtrlCreateCheckbox(GetTranslated(4,47, "Use King"), $x + 12 , $y+1, -1, -1)
			$txtTip = GetTranslated(4,48, "Use King when Attacking TH Snipe") & @CRLF & GetTranslated(4,49, "Will be deployed in First wave")
			GUICtrlSetTip(-1, $txtTip)
			GUICtrlSetState(-1, $GUI_DISABLE)
		GUICtrlCreateIcon($pIconLib, $eIcnLightSpell, $x + 102 , $y, 24, 24)
		$chkUseLSpellsTH = GUICtrlCreateCheckbox(GetTranslated(4,50, "Use LSpell"), $x + 130 , $y+1, -1, -1)
			$txtTip = GetTranslated(4,51, "Use Lighting spells when Attacking TH Snipe") & @CRLF & GetTranslated(4,52, "Will be deployed in Third wave")
			GUICtrlSetTip(-1, $txtTip)
			GUICtrlSetState(-1, $GUI_DISABLE)

		$y += 27
		GUICtrlCreateIcon($pIconLib, $eIcnQueen, $x - 16 , $y, 24, 24)
		$chkUseQueenTH = GUICtrlCreateCheckbox(GetTranslated(4,53, "Use Queen"), $x + 12 , $y+1, -1, -1)
			$txtTip = GetTranslated(4,54, "Use Queen when Attacking TH Snipe") & @CRLF & GetTranslated(4,55, "Will be deployed in First wave")
			GUICtrlSetTip(-1, $txtTip)
			GUICtrlSetState(-1, $GUI_DISABLE)
		GUICtrlCreateIcon($pIconLib, $eIcnRageSpell, $x + 102 , $y, 24, 24)
		$chkUseRSpellsTH = GUICtrlCreateCheckbox(GetTranslated(4,56, "Use RSpell"), $x + 130 , $y+1, -1, -1)
			$txtTip = GetTranslated(4,57, "Use Heal spells when Attacking TH Snipe") & @CRLF &  GetTranslated(4,58, "Will be deployed in Third wave")
			GUICtrlSetTip(-1, $txtTip)
			GUICtrlSetState(-1, $GUI_DISABLE)

		$y += 27
		GUICtrlCreateIcon($pIconLib, $eIcnCC, $x - 16, $y, 24, 24)
		$chkUseClastleTH = GUICtrlCreateCheckbox(GetTranslated(4,59, "Drop in Battle"), $x + 12 , $y+1, -1, -1)
			$txtTip = GetTranslated(4,60, "Use Clan Castle when Attacking TH Snipe") & @CRLF & GetTranslated(4,61, "Will be deployed in Second wave")
			GUICtrlSetTip(-1, $txtTip)
			GUICtrlSetState(-1, $GUI_DISABLE)
		GUICtrlCreateIcon($pIconLib, $eIcnHealSpell, $x + 102 , $y, 24, 24)
		$chkUseHSpellsTH = GUICtrlCreateCheckbox(GetTranslated(4,62, "Use HSpell"), $x + 130 , $y+1, -1, -1)
			$txtTip = GetTranslated(4,63, "Use Heal spells when Attacking TH Snipe") & @CRLF & GetTranslated(4,64, "Will be deployed in Second wave")
			GUICtrlSetTip(-1, $txtTip)
			GUICtrlSetState(-1, $GUI_DISABLE)


		$y+= 30

;~ 		$btnTestTHcsv = GUICtrlCreateButton("Test TH attack in log", $x , $y + 45, -1, -1)
;~ 			$txtTip = "Click here to parse crv attack and show results in log"
;~ 			GUICtrlSetTip(-1, $txtTip)
;~ 			GUICtrlSetOnEvent(-1, "btnTestTHcsv")
;~ 			IF $btnColor then GUICtrlSetBkColor(-1, 0x5CAD85)



    GUICtrlCreateGroup("", -99, -99, 1, 1)

	Local $x = 30, $y = 240
	$grpBullyAtkCombo = GUICtrlCreateGroup(GetTranslated(4,65, "Bully Attack Combo"), $x - 20, $y - 20, 220, 110)
	    $y -= 5
		$x -= 10
		$chkBullyMode = GUICtrlCreateCheckbox(GetTranslated(4,66, "TH Bully.  After") & ":", $x, $y, -1, -1)
			$txtTip = GetTranslated(4,67, "Adds the TH Bully combo to the current search settings. (Example: Deadbase OR TH Bully)") & @CRLF & GetTranslated(4,68, "TH Bully: Attacks a lower townhall level after the specified No. of searches.")
			GUICtrlSetTip(-1, $txtTip)
			GUICtrlSetOnEvent(-1, "chkBullyMode")
		$txtATBullyMode = GUICtrlCreateInput("150", $x + 95, $y, 35, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
			$txtTip = GetTranslated(4,69, "TH Bully: No. of searches to wait before activating.")
			GUICtrlSetLimit(-1, 3)
			GUICtrlSetTip(-1, $txtTip)
			GUICtrlSetState(-1, $GUI_DISABLE)
		$lblATBullyMode = GUICtrlCreateLabel(GetTranslated(4,70, "search(es)."), $x + 135, $y + 5, -1, -1)
		$y +=25
		$lblATBullyMode = GUICtrlCreateLabel(GetTranslated(4,71, "Max TH level") & ":", $x - 10, $y + 3, 90, -1, $SS_RIGHT)
		$cmbYourTH = GUICtrlCreateCombo("", $x + 95, $y, 50, -1, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
			$txtTip = GetTranslated(4,72, "TH Bully: Max. Townhall level to bully.")
			GUICtrlSetTip(-1, $txtTip)
			GUICtrlSetData(-1, "4-6|7|8|9|10|11", "4-6")
			GUICtrlSetState(-1, $GUI_DISABLE)
		$y += 24
		GUICtrlCreateLabel(GetTranslated(4,73, "When found, Attack with settings from")&":", $x + 10, $y, -1, -1, $SS_RIGHT)
		$y += 14
		$radUseDBAttack = GUICtrlCreateRadio(GetTranslated(4,74, "DeadBase Atk."), $x + 20, $y, -1, -1)
			GUICtrlSetTip(-1, GetTranslated(4,75, "Use Dead Base attack settings when attacking a TH Bully match."))
			GUICtrlSetState(-1, $GUI_CHECKED)
			GUICtrlSetState(-1, $GUI_DISABLE)
		$radUseLBAttack = GUICtrlCreateRadio(GetTranslated(4,76, "LiveBase Atk."), $x + 115, $y, -1, -1)
			GUICtrlSetTip(-1, GetTranslated(4,77, "Use Live Base attack settings when attacking a TH Bully match."))
			GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlCreateGroup("", -99, -99, 1, 1)

	Local $x = 30, $y = 355
; noyax top
	$grpDefenseFarming = GUICtrlCreateGroup("Milking", $x - 20, $y - 20, 220, 170)
		$chkDBAttMilk = GUICtrlCreateCheckbox( "Milking with", $x, $y, -1, -1)
			$txtTip = "Use Gobelins Power to try Milking."
			GUICtrlSetTip(-1, $txtTip)
			GUICtrlSetState(-1, $GUI_CHECKED)
			GUICtrlSetOnEvent(-1, "milkingatt")
		$txtDBAttMilk = GUICtrlCreateInput("90", $x + 80, $y + 3, 25, 18, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
			$txtTip = "Number of troops used for milking attack"
			GUICtrlSetTip(-1, $txtTip)
			GUICtrlSetLimit(-1, 5)
			_GUICtrlEdit_SetReadOnly(-1, False)
		$lblDBAttMilkDB = GUICtrlCreateLabel("Gobs", $x + 108, $y + 3)
;		$y += 23
;		$chkPercentExposed = GUICtrlCreateCheckbox( "Skip if exposed <", $x - 10, $y, -1, -1)
;			$txtTip = "If not more of nb tot of collectors and mines."
;			GUICtrlSetTip(-1, $txtTip)
;			GUICtrlSetState(-1, $GUI_CHECKED)
;			GUICtrlSetOnEvent(-1, "chkPercentExposed")
;		$txtchkPercentExposed = GUICtrlCreateInput("80", $x + 100, $y + 3, 25, 18, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
;			$txtTip = "Number min of exposed collectors to attack"
;			GUICtrlSetTip(-1, $txtTip)
;			GUICtrlSetLimit(-1, 5)
;			_GUICtrlEdit_SetReadOnly(-1, False)
;		$lblPercentExposed = GUICtrlCreateLabel("%", $x + 128, $y + 3)
		$y += 23
		$lblPixelmaxExposed = GUICtrlCreateLabel("Number of pixel max to considere exposed:", $x , $y + 3)
		$y += 23
		$txtchkPixelmaxExposed = GUICtrlCreateInput("100", $x + 50, $y , 25, 18, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
			$txtTip = "Number min of pixels to considere collectors exposed"
			GUICtrlSetTip(-1, $txtTip)
			GUICtrlSetLimit(-1, 3)
			_GUICtrlEdit_SetReadOnly(-1, False)
		$y += 23
		$lblHysterGobs = GUICtrlCreateLabel("Nb troops mini before train:", $x - 5 , $y + 3)
;		$y += 23
		$txtchkHysterGobs = GUICtrlCreateInput("40", $x + 130, $y , 25, 18, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
			$txtTip = "Number min of troops before train again"
			GUICtrlSetTip(-1, $txtTip)
			GUICtrlSetLimit(-1, 3)
			_GUICtrlEdit_SetReadOnly(-1, False)
		$y += 21
		$lblTempoTrain = GUICtrlCreateLabel("Nb minutes max without train:", $x - 5 , $y + 3)
;		$y += 23
		$txtchkTempoTrain = GUICtrlCreateInput("15", $x + 140, $y , 25, 18, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
			$txtTip = "Number minutes max between 2 trains troops"
			GUICtrlSetTip(-1, $txtTip)
			GUICtrlSetLimit(-1, 3)
			_GUICtrlEdit_SetReadOnly(-1, False)
		
;		$txtDBUseGobsForCollector = GUICtrlCreateInput("5", $x + 18, $y + 25, 25, 18, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
;			$txtTip = "Bot tries to use X amount of Goblins to attack each exposed collector"
;			GUICtrlSetTip(-1, $txtTip)
;			GUICtrlSetLimit(-1, 3)
;			_GUICtrlEdit_SetReadOnly(-1, False)
;		$lblUseForColl2 = GUICtrlCreateLabel("Gobs for collector" , $x + 50, $y + 27, -1, -1)
		
;noyax bottom
    GUICtrlCreateGroup("", -99, -99, 1, 1)

GUICtrlCreateTabItem("")
