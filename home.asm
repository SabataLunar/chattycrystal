INCLUDE "constants.asm"

INCLUDE "home/low.asm"


SECTION "Header", ROM0

Start::
	nop
	jp _Start


SECTION "Home", ROM0

INCLUDE "home/16bit.asm"
INCLUDE "home/array.asm"
INCLUDE "home/audio.asm"
INCLUDE "home/battle.asm"
INCLUDE "home/battle_vars.asm"
INCLUDE "home/clear_sprites.asm"
INCLUDE "home/compare.asm"
INCLUDE "home/copy.asm"
INCLUDE "home/copy_name.asm"
INCLUDE "home/copy_tilemap.asm"
INCLUDE "home/cry.asm"
INCLUDE "home/decompress.asm"
INCLUDE "home/double_speed.asm"
INCLUDE "home/fade.asm"
INCLUDE "home/farcall.asm"
INCLUDE "home/flag.asm"
INCLUDE "home/game_time.asm"
INCLUDE "home/handshake.asm"
INCLUDE "home/indirection.asm"
INCLUDE "home/init.asm"
INCLUDE "home/item.asm"
INCLUDE "home/joypad.asm"
INCLUDE "home/lcd.asm"
INCLUDE "home/map.asm"
INCLUDE "home/map_objects.asm"
INCLUDE "home/math.asm"
INCLUDE "home/menu.asm"
INCLUDE "home/menu_window.asm"
INCLUDE "home/mobile.asm"
INCLUDE "home/mon_data.asm"
INCLUDE "home/mon_stats.asm"
INCLUDE "home/movement.asm"
INCLUDE "home/moves.asm"
INCLUDE "home/names.asm"
INCLUDE "home/palettes.asm"
INCLUDE "home/pokedex_flags.asm"
INCLUDE "home/predef.asm"
INCLUDE "home/print_bcd.asm"
INCLUDE "home/print_level.asm"
INCLUDE "home/print_text.asm"
INCLUDE "home/queue_script.asm"
INCLUDE "home/random.asm"
INCLUDE "home/region.asm"
INCLUDE "home/scrolling_menu.asm"
INCLUDE "home/serial.asm"
INCLUDE "home/sprite_anims.asm"
INCLUDE "home/sprite_updates.asm"
INCLUDE "home/sram.asm"
INCLUDE "home/stone_queue.asm"
INCLUDE "home/string.asm"
INCLUDE "home/text.asm"
INCLUDE "home/tilemap.asm"
INCLUDE "home/time.asm"
INCLUDE "home/trainers.asm"
INCLUDE "home/vblank.asm"
INCLUDE "home/video.asm"
INCLUDE "home/window.asm"
