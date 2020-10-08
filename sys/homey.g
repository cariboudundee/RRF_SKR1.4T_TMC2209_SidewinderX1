
; homey.g
; called to home the Y axis

; normal version
;G91               ; relative positioning
;G1 H2 Z5 F6000    ; lift Z relative to current position
;G1 H1 Y-320 F6000 ; move quickly to Y axis endstop and stop there (first pass)
;G1 H2 Y5 F6000    ; go back a few mm
;G1 H1 Y-320 F600  ; move slowly to Y axis endstop once more (second pass)
;G1 H2 Z-5 F6000   ; lower Z again
;G90               ; absolute positioning

; sensorless homing version
M400 					; Wait for motion to stop
G91 					; Use relative moves
G1 H2 Y0.01      		; Move X a small amount to enable
M400 					; Wait for stop
G4 P200 				; Delay to allow TMC to detect stopped state
M915 p1 s20 H200 r0 	; Configure stall detect
M574 Y1 S3 				; Configure X endstop
G4 P200 				; Delay to ensure settings are made
G1 H2 Z5 	 			; lift Z relative to current position
G1 H1 Y-320 F3500 		; home
M400					; Wait for stop
M915 p1 s20 H200 r0 	; Configure stall detect
G4 P200					; Delay
G1 H1 Y20 F3500			; Move towards endstop until it stalls
M400 					; Wait until all stopped
G1 H1 Y-320  			; Move towards endstop until it stalls
M400 					; Wait until all stopped
G1 Y1 F1000 			; Move away from stop and clear stall
G1 H2 Z-5 F2500 		; Return Z to original position
M400 					; wait complete
G90 					; Absolute positioning