; resume.g
; called before a print from SD card is resumed
;
; generated by RepRapFirmware Configuration Tool v2.1.4 on Thu May 07 2020 07:31:53 GMT+0200 (Mitteleuropäische Sommerzeit)
G1 R1 X0 Y0 Z5 F6000 ; go to 5mm above position of the last print move
G1 R1 X0 Y0          ; go back to the last print move
M83                  ; relative extruder moves
G1 E3 F3600         ; extrude 3mm of filament

