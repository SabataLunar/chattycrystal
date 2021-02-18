forme: MACRO
	dba \1 ; frontpic
	dba \2 ; backpic
	assert BANK(PokemonPalettes) == BANK(\3)
	dw \3 ; palettes
	dba \4 ; frames
	assert BANK(BitmasksPointers) == BANK(\5)
	dw \5 ; bitmask
	assert BANK(AnimationPointers) == BANK(\6)
	dw \6 ; animation
	assert BANK(AnimationPointers) == BANK(\7)
	dw \7 ; idle animation
ENDM

; MUST have 6 formes per species; duplicate as needed!

Formes::
	dw BURMY, BurmyFormes
	dw SHELLOS, ShellosFormes
	dw GASTRODON, GastrodonFormes
	dw -1

FormeTypeOverrides:
	dw -1


BurmyFormes:
	; plant cloak
	forme BurmyFrontpic, BurmyBackpic, BurmyPalette, BurmyFrames, BurmyBitmasks, BurmyAnimation, BurmyAnimationIdle
	; sandy cloak - animation is PLACEHOLDER
	forme BurmySandyFrontpic, BurmySandyBackpic, BurmySandyPalette, PlaceholderFrames, PlaceholderBitmasks, PlaceholderAnimation, PlaceholderAnimationIdle
	; trash cloak - animation is PLACEHOLDER
	forme BurmyTrashFrontpic, BurmyTrashBackpic, BurmyTrashPalette, PlaceholderFrames, PlaceholderBitmasks, PlaceholderAnimation, PlaceholderAnimationIdle
	; plant cloak
	forme BurmyFrontpic, BurmyBackpic, BurmyPalette, BurmyFrames, BurmyBitmasks, BurmyAnimation, BurmyAnimationIdle
	; sandy cloak - animation is PLACEHOLDER
	forme BurmySandyFrontpic, BurmySandyBackpic, BurmySandyPalette, PlaceholderFrames, PlaceholderBitmasks, PlaceholderAnimation, PlaceholderAnimationIdle
	; trash cloak - animation is PLACEHOLDER
	forme BurmyTrashFrontpic, BurmyTrashBackpic, BurmyTrashPalette, PlaceholderFrames, PlaceholderBitmasks, PlaceholderAnimation, PlaceholderAnimationIdle

ShellosFormes:
	; west sea - animation is PLACEHOLDER
	forme ShellosFrontpic, ShellosBackpic, ShellosPalette, PlaceholderFrames, PlaceholderBitmasks, PlaceholderAnimation, PlaceholderAnimationIdle
	; east sea - animation is PLACEHOLDER
	forme ShellosEastFrontpic, ShellosEastBackpic, ShellosEastPalette, PlaceholderFrames, PlaceholderBitmasks, PlaceholderAnimation, PlaceholderAnimationIdle
	; west sea - animation is PLACEHOLDER
	forme ShellosFrontpic, ShellosBackpic, ShellosPalette, PlaceholderFrames, PlaceholderBitmasks, PlaceholderAnimation, PlaceholderAnimationIdle
	; east sea - animation is PLACEHOLDER
	forme ShellosEastFrontpic, ShellosEastBackpic, ShellosEastPalette, PlaceholderFrames, PlaceholderBitmasks, PlaceholderAnimation, PlaceholderAnimationIdle
	; west sea - animation is PLACEHOLDER
	forme ShellosFrontpic, ShellosBackpic, ShellosPalette, PlaceholderFrames, PlaceholderBitmasks, PlaceholderAnimation, PlaceholderAnimationIdle
	; east sea - animation is PLACEHOLDER
	forme ShellosEastFrontpic, ShellosEastBackpic, ShellosEastPalette, PlaceholderFrames, PlaceholderBitmasks, PlaceholderAnimation, PlaceholderAnimationIdle

GastrodonFormes:
	; west sea - animation is PLACEHOLDER
	forme GastrodonFrontpic, GastrodonBackpic, GastrodonPalette, PlaceholderFrames, PlaceholderBitmasks, PlaceholderAnimation, PlaceholderAnimationIdle
	; east sea - animation is PLACEHOLDER
	forme GastrodonEastFrontpic, GastrodonEastBackpic, GastrodonEastPalette, PlaceholderFrames, PlaceholderBitmasks, PlaceholderAnimation, PlaceholderAnimationIdle
	; west sea - animation is PLACEHOLDER
	forme GastrodonFrontpic, GastrodonBackpic, GastrodonPalette, PlaceholderFrames, PlaceholderBitmasks, PlaceholderAnimation, PlaceholderAnimationIdle
	; east sea - animation is PLACEHOLDER
	forme GastrodonEastFrontpic, GastrodonEastBackpic, GastrodonEastPalette, PlaceholderFrames, PlaceholderBitmasks, PlaceholderAnimation, PlaceholderAnimationIdle
	; west sea - animation is PLACEHOLDER
	forme GastrodonFrontpic, GastrodonBackpic, GastrodonPalette, PlaceholderFrames, PlaceholderBitmasks, PlaceholderAnimation, PlaceholderAnimationIdle
	; east sea - animation is PLACEHOLDER
	forme GastrodonEastFrontpic, GastrodonEastBackpic, GastrodonEastPalette, PlaceholderFrames, PlaceholderBitmasks, PlaceholderAnimation, PlaceholderAnimationIdle
