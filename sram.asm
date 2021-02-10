SECTION "Scratch", SRAM

UNION ; a000
sScratch:: ds $600 ; a000
; a600

NEXTU ; a000
sEnemyFrontPicTileCount:: db ; a000
sPaddedEnemyFrontPic:: ds 7 * 7 tiles ; a001
; a311

ENDU ; a600

SECTION "SRAM Bank 0", SRAM

; a600
sPartyMail::
sPartyMon1Mail:: mailmsg sPartyMon1Mail
sPartyMon2Mail:: mailmsg sPartyMon2Mail
sPartyMon3Mail:: mailmsg sPartyMon3Mail
sPartyMon4Mail:: mailmsg sPartyMon4Mail
sPartyMon5Mail:: mailmsg sPartyMon5Mail
sPartyMon6Mail:: mailmsg sPartyMon6Mail

; a71a
sPartyMailBackup::
sPartyMon1MailBackup:: mailmsg sPartyMon1MailBackup
sPartyMon2MailBackup:: mailmsg sPartyMon2MailBackup
sPartyMon3MailBackup:: mailmsg sPartyMon3MailBackup
sPartyMon4MailBackup:: mailmsg sPartyMon4MailBackup
sPartyMon5MailBackup:: mailmsg sPartyMon5MailBackup
sPartyMon6MailBackup:: mailmsg sPartyMon6MailBackup

; a834
sMailboxCount:: db
sMailbox::
___count = 0
rept MAILBOX_CAPACITY
___count = ___count + 1
sMailbox{d:___count}::  mailmsg sMailbox{d:___count}
endr

; aa0b
sMailboxCountBackup:: db
sMailboxBackup::
___count = 0
rept MAILBOX_CAPACITY
___count = ___count + 1
sMailbox{d:___count}Backup::  mailmsg sMailbox{d:___count}Backup
endr

; abe2
sMysteryGiftItem:: db
sMysteryGiftUnlocked:: db
sBackupMysteryGiftItem:: db
sNumDailyMysteryGiftPartnerIDs:: db
sDailyMysteryGiftPartnerIDs:: ds 5 * 2 ; maximum 5 per day, 2 bytes per ID
sMysteryGiftDecorationsReceived:: flag_array NUM_NON_TROPHY_DECOS
	ds 4
sMysteryGiftTimer:: db
sMysteryGiftTimerStartDay:: db
	ds 1
sMysteryGiftTrainerHouseFlag:: db
sMysteryGiftPartnerName:: ds NAME_LENGTH
s0_ac09:: ds 1
sMysteryGiftTrainer:: ds (1 + 1 + NUM_MOVES) * PARTY_LENGTH + 2 ; ac0a
sBackupMysteryGiftItemEnd::

	ds $30

sRTCStatusFlags:: ds 8
sLuckyNumberDay:: db
sLuckyIDNumber::  dw

SECTION "Saved 16-bit conversion tables", SRAM
; the Pokémon index table isn't stored here to improve save data packing
	ds $100
sMoveIndexTable:: ds wMoveIndexTableEnd - wMoveIndexTable

SECTION "Save", SRAM

sOptions:: ds wOptionsEnd - wOptions

sCheckValue1:: db ; loaded with SAVE_CHECK_VALUE_1, used to check save corruption

sSaveData::

sGameData:: ; a009
sPlayerData::  ds wPlayerDataEnd - wPlayerData
sCurMapData::  ds wCurMapDataEnd - wCurMapData
sPokemonData:: ds wPokemonDataEnd - wPokemonData
sGameDataEnd::

sPokemonIndexTable:: ds wPokemonIndexTableEnd - wPokemonIndexTable

sConversionTableChecksum:: dw

sSaveDataEnd::

; ab85
	ds $88
; ad0d

sChecksum:: dw

sCheckValue2:: db ; loaded with SAVE_CHECK_VALUE_2, used to check save corruption


SECTION "Active Box", SRAM

; ad10
sBox:: box sBox
; b160

	ds $f4


SECTION "Link Battle Data", SRAM

sLinkBattleResults:: ds $c

sLinkBattleStats::
sLinkBattleWins::   dw ; b260
sLinkBattleLosses:: dw ; b262
sLinkBattleDraws::  dw ; b264

sLinkBattleRecord::
sLinkBattleRecord1:: link_battle_record sLinkBattleRecord1
sLinkBattleRecord2:: link_battle_record sLinkBattleRecord2
sLinkBattleRecord3:: link_battle_record sLinkBattleRecord3
sLinkBattleRecord4:: link_battle_record sLinkBattleRecord4
sLinkBattleRecord5:: link_battle_record sLinkBattleRecord5
sLinkBattleStatsEnd::


SECTION "SRAM Hall of Fame", SRAM

sHallOfFame:: ; b2c0
___count = 0
rept NUM_HOF_TEAMS
___count = ___count + 1
sHallOfFame{d:___count}:: hall_of_fame sHallOfFame{d:___count}
endr
sHallOfFameEnd::


SECTION "SRAM Crystal Data", SRAM

sMobileEventIndex:: db ; bf0e

sCrystalData:: ds wCrystalDataEnd - wCrystalData

sMobileEventIndexBackup:: db ; bf16


SECTION "SRAM Battle Tower", SRAM

; Battle Tower data must be in SRAM because you can save and leave between battles
sBattleTowerChallengeState::
; 0: normal
; 2: battle tower
	db

sBattleTower:: ; bf18
sNrOfBeatenBattleTowerTrainers:: db
sBTChoiceOfLevelGroup:: db
; Battle Tower trainers are saved here, so nobody appears more than once
sBTTrainers:: ds BATTLETOWER_STREAK_LENGTH ; bf1a
sBattleTowerSaveFileFlags:: db
sBattleTowerReward:: db

; team of previous trainer
sBTMonOfTrainers:: ; bf23
sBTMonPrevTrainer1:: dw
sBTMonPrevTrainer2:: dw
sBTMonPrevTrainer3:: dw
; team of preprevious trainer
sBTMonPrevPrevTrainer1:: dw
sBTMonPrevPrevTrainer2:: dw
sBTMonPrevPrevTrainer3:: dw


SECTION "Boxes 1-7", SRAM

sBox1:: box sBox1
sBox2:: box sBox2
sBox3:: box sBox3
sBox4:: box sBox4
sBox5:: box sBox5
sBox6:: box sBox6
sBox7:: box sBox7

sBox1PokemonIndexes:: ds 2 * MONS_PER_BOX
sBox2PokemonIndexes:: ds 2 * MONS_PER_BOX
sBox3PokemonIndexes:: ds 2 * MONS_PER_BOX
sBox4PokemonIndexes:: ds 2 * MONS_PER_BOX
sBox5PokemonIndexes:: ds 2 * MONS_PER_BOX
sBox6PokemonIndexes:: ds 2 * MONS_PER_BOX
sBox7PokemonIndexes:: ds 2 * MONS_PER_BOX


SECTION "Boxes 8-14", SRAM

sBox8:: box sBox8
sBox9:: box sBox9
sBox10:: box sBox10
sBox11:: box sBox11
sBox12:: box sBox12
sBox13:: box sBox13
sBox14:: box sBox14

sBox8PokemonIndexes:: ds 2 * MONS_PER_BOX
sBox9PokemonIndexes:: ds 2 * MONS_PER_BOX
sBox10PokemonIndexes:: ds 2 * MONS_PER_BOX
sBox11PokemonIndexes:: ds 2 * MONS_PER_BOX
sBox12PokemonIndexes:: ds 2 * MONS_PER_BOX
sBox13PokemonIndexes:: ds 2 * MONS_PER_BOX
sBox14PokemonIndexes:: ds 2 * MONS_PER_BOX

SECTION "SRAM Mobile 1", SRAM

	ds $13

s4_a013:: ds 36 ; a013

SECTION "SRAM Mobile 2", SRAM

	ds 1 ; former location for sMobileEventIndex, moved to 1:BE3C in English

sTrainerRankings:: ; a001
sTrainerRankingGameTimeHOF:: ds 4
sTrainerRankingStepCountHOF:: ds 4
sTrainerRankingHealingsHOF:: ds 4
sTrainerRankingBattlesHOF:: ds 3
sTrainerRankingStepCount:: ds 4
sTrainerRankingBattleTowerWins:: ds 4
sTrainerRankingTMsHMsTaught:: ds 3
sTrainerRankingBattles:: ds 3
sTrainerRankingWildBattles:: ds 3
sTrainerRankingTrainerBattles:: ds 3
sTrainerRankingUnused1:: ds 3
sTrainerRankingHOFEntries:: ds 3
sTrainerRankingWildMonsCaught:: ds 3
sTrainerRankingHookedEncounters:: ds 3
sTrainerRankingEggsHatched:: ds 3
sTrainerRankingMonsEvolved:: ds 3
sTrainerRankingFruitPicked:: ds 3
sTrainerRankingHealings:: ds 3
sTrainerRankingMysteryGift:: ds 3
sTrainerRankingTrades:: ds 3
sTrainerRankingFly:: ds 3
sTrainerRankingSurf:: ds 3
sTrainerRankingWaterfall:: ds 3
sTrainerRankingWhiteOuts:: ds 3
sTrainerRankingLuckyNumberShow:: ds 3
sTrainerRankingPhoneCalls:: ds 3
sTrainerRankingUnused2:: ds 3
sTrainerRankingLinkBattles:: ds 3
sTrainerRankingSplash:: ds 3
sTrainerRankingTreeEncounters:: ds 3
sTrainerRankingUnused3:: ds 3
sTrainerRankingColosseumWins:: ds 3
sTrainerRankingColosseumLosses:: ds 3
sTrainerRankingColosseumDraws:: ds 3
sTrainerRankingSelfdestruct:: ds 3
sTrainerRankingCurrentSlotsStreak:: ds 2
sTrainerRankingLongestSlotsStreak:: ds 2
sTrainerRankingTotalSlotsPayouts:: ds 4
sTrainerRankingTotalBattlePayouts:: ds 4
sTrainerRankingLongestMagikarp:: ds 2
sTrainerRankingShortestMagikarp:: ds 2
sTrainerRankingBugContestScore:: ds 2
sTrainerRankingsChecksum:: ds 2
sTrainerRankingsEnd:: ; a083

	ds 1 ; Former location for sMobileEventIndexBackup, moved to 1:BE44 in English

sTrainerRankingsBackup:: ds sTrainerRankingsEnd - sTrainerRankings ; a084

	ds $6fa

s5_a800:: db ; a800

	ds $24

s5_a825:: db ; a825
s5_a826:: db ; a826

	ds $6d

s5_a894:: ds NAME_LENGTH_JAPANESE ; a894

	ds $2

s5_a89c:: ds 22 ; a89c
s5_a8b2:: ds 150 ; a8b2

s5_a948:: ds 246 ; a948

	ds $3

s5_aa41:: ds 4 ; aa41

	ds $2

s5_aa47:: db ; aa47
s5_aa48:: db ; aa48

	ds $2

sMobileLoginPassword:: ds MOBILE_LOGIN_PASSWORD_LENGTH ; aa4b

	ds $1

s5_aa5d:: ds MOBILE_LOGIN_PASSWORD_LENGTH ; aa5d

	ds $1d

s5_aa8b:: db ; aa8b
s5_aa8c:: db ; aa8c
s5_aa8d:: db ; aa8d
s5_aa8e:: ds 7 * $cc ; aa8e

	ds $1

s5_b023:: ds 105 ; b023
s5_b08c:: ds 4 ; b08c

	ds $269

s5_b2f9:: db ; b2f9
s5_b2fa:: db ; b2fa
s5_b2fb:: db ; b2fb

	ds $b49

s5_be45:: db ; be45
s5_be46:: db ; be46
