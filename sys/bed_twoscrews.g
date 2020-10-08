; bed.g
; called to perform automatic bed compensation via G32

G28 XY                          ; home
M561                            ; clear any bed transform
G30 P0 X20 Y155 Z-99999           ; Probe left side of bed
G30 P1 X270 Y155 Z-99999 S2       ; Probe Right, Then set offset calibration amount

;
;G29  ; probe the bed and enable compensation