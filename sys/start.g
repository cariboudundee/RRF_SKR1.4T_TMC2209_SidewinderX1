M98 P"0:/macros/Musical Tunes/Startup.g"
M140 S70													; Set heated bed to 70 and release
T0															; Select Tool 0
M291 P"Print Started. Preheating and Homing." T10			; On screen notification
G4 S1
M220 S100													; Set speed factor back to 100% in case it was changed
M221 S100													; Set extrusion factor back to 100% in case it was changed
M290 R0 S0													; Clear babystepping
M106 S0														; Turn part cooling blower off if it is on
G10 P0 R0 S205												; Set extruder to 205 and release
M190 S70													; Set heated bed to 70 and wait
if !move.axes[0].homed || !move.axes[1].homed || !move.axes[2].homed
 G28 XYZ
G32                                                         ; Run bed.g macro
M400                                                        ; Wait for current moves to finish
G29 S0                                                      ; Probe the bed, save height map to heightmap.csv and enable compensation
M400                                                        ; Wait for current moves to finish
G1 Z5.0 F3000                                               ; Move Z Axis up little to prevent scratching of Heat Bed
G1 X10 Y10 Z0.3 F8000.0                                     ; Move to start position
G1 X10 Y250 Z0.3 F1600.0 E17                                ; Draw the first line
G1 X13 Y250 Z0.3 F5000.0                                    ; Move to side a little
G1 X13 Y20 Z0.3 F1600.0 E34                                 ; Draw the second line
G92 E0                                                      ; Reset Extruder
G1 Z10.0 F3000                                              ; Move Z Axis up little to prevent scratching of Heat Bed

 
