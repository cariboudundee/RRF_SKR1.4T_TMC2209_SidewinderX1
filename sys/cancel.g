; stop.g
; called when a print is cancelled after a pause.
M400														; Finish move queue
M104 S0 													; Extruder heater off
M140 S0 													; Bed heater off
M106 S255 													; Fan at 100 to cool nozzle and bed
G91															; Relative positioning
M220 S100													; Set speed factor back to 100% in case it was changed
M221 S100													; Set extrusion factor back to 100% in case it was changed
G1 E-2 F9000												; Retract filament 2mm
;G1 X5 Y5 F9000												; Wipe nozzle 
G1 Z5 F500													; Raise nozzle 5mm from printed part
G1 X0 Y300 F1000		                                    ;Present print
G90															; Absolute positioning
;G1 X0 Y0 F6000												; Move x and Y axis over to bed center so probe is on top of bed
;M104 S35													; Set hot end low and wait
G4 S60														; Wait 5 minutes
M116														; Wait for temp to drop
;G28														; Home X
M290 R0 S0													; Clear babystepping
M84															; Steppers off
M106 S0														; Fan off