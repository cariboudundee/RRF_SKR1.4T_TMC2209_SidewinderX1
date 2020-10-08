
; homex.g
; called to home the X axis

; normal home
;G91               ; relative positioning
;G1 H2 Z5 F6000    ; lift Z relative to current position
;G1 H1 X-320 F6000 ; move quickly to X axis endstop and stop there (first pass)
;G1 H2 X5 F6000    ; go back a few mm
;G1 H1 X-320 F600  ; move slowly to X axis endstop once more (second pass)
;G1 H2 Z-5 F6000   ; lower Z again
;G90               ; absolute positioning

; sensorless homing version
M400 					; Wait for motion to stop
G91 					; Use relative moves
G1 H2 X0.01 Z0.01 		; Move X a small amount to enable
M400 					; Wait for stop
G4 P200 				; Delay to allow TMC to detect stopped state
M913 X50 	 			; Lower X power
G4 P200 				; Delay to ensure settings are made
G1 H2 Z5 	 			; lift Z relative to current position
M915 p0 s10 H200 r0 	; Configure stall detect
M574 X1 S3              ; Configure X endstop
g1 H1 X-350 F3500 		; back away from endstop
M400					; Wait for stop
M915 p0 s20 H200 r0 	; Configure stall detect
G4 P200					; Delay
g1 H1 X10 F3500 		; back away from endstop
M400					; wait for stop
G1 H1 X-350 F3500 		; Move towards endstop until it stalls
M400 					; Wait until all stopped
G1 X1 F1000 			; Move away from stop and clear stall
G1 H2 Z-5 F2500 		; Return Z to original position
M400 					; wait complete
G90 					; Absolute positioning
M913 X100 				; back to full power