VERSION_MAJOR EQU 1
VERSION_MINOR EQU 0

; set to a non-zero value to mark the build as a release
RELEASE_NUMBER EQU 0

; do not change anything below this line

if RELEASE_NUMBER
BUILD_LABEL EQUS "v{d:VERSION_MAJOR}.{02d:VERSION_MINOR} release {5d:RELEASE_NUMBER}"
else
; huge hack because RGBDS (v0.5.0-rc2) defines __UTC_YEAR__ and friends as strings, not numbers
___build_year   EQU __UTC_YEAR__
___build_month  EQU __UTC_MONTH__
___build_day    EQU __UTC_DAY__
___build_hour   EQU __UTC_HOUR__
___build_minute EQU __UTC_MINUTE__
___build_second EQU __UTC_SECOND__

BUILD_LABEL EQUS "{04d:___build_year}-{02d:___build_month}-{02d:___build_day} {02d:___build_hour}:{02d:___build_minute}:{02d:___build_second}"
endc