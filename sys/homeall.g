	

; homeall.g
; called to home all axes
;
; normal version

M98 P"homex.g"
M98 P"homey.g"
M98 P"homez.g"

; sensorless version

;****************COPIED FROM HOME Y SCRIPT********************
;M400 					; Wait for motion to stop
;G91 					; Use relative moves
;G1 H2 Y0.01      		; Move X a small amount to enable
;M400 					; Wait for stop
;G4 P200 				; Delay to allow TMC to detect stopped state
;M915 p1 s20 H200 r0 	; Configure stall detect
;M574 Y1 S3 				; Configure X endstop
;G4 P200 				; Delay to ensure settings are made
;G1 H2 Z5 	 			; lift Z relative to current position
;g1 H1 Y-320 F2500 		; home
;M400					; Wait for stop
;M915 p1 s20 H200 r0 	; Configure stall detect
;G4 P200					; Delay
;G1 H1 Y20 F2500			; Move towards endstop until it stalls
;M400 					; Wait until all stopped
;G1 H1 Y-320  			; Move towards endstop until it stalls
;M400 					; Wait until all stopped
;G1 Y1 F1000 			; Move away from stop and clear stall
;G1 H2 Z-5 F2500 		; Return Z to original position
;M400 					; wait complete
;G90 					; Absolute positioning
;************** END ********************************************
;M400 					; Wait for stop
;G4 P200 				; Delay to allow TMC to detect stopped state
;****************COPIED FROM HOME X SCRIPT********************
;M400 					; Wait for motion to stop
;G91 					; Use relative moves
;G1 H2 X0.01 Z0.01 		; Move X a small amount to enable
;M400 					; Wait for stop
;G4 P200 				; Delay to allow TMC to detect stopped state
;M913 X70 	 			; Lower X power
;G4 P200 				; Delay to ensure settings are made
;G1 H2 Z5 	 			; lift Z relative to current position
;M915 p0 s20 H200 r0 	; Configure stall detect
;M574 X1 S3              ; Configure X endstop
;g1 H1 X-320 F2500 		; back away from endstop
;M400					; Wait for stop
;M915 p0 s30 H200 r0 	; Configure stall detect
;G4 P200					; Delay
;g1 H1 X10 F2500 		; back away from endstop
;M400					; wait for stop
;G1 H1 X-320 F3000 		; Move towards endstop until it stalls
;M400 					; Wait until all stopped
;G1 X1 F1000 			; Move away from stop and clear stall
;G1 H2 Z-5 F2500 		; Return Z to original position
;M400 					; wait complete
;G90 					; Absolute positioning
;M913 X100 				; back to full power
;;************** END ********************************************
;M400 					; Wait for stop
;G4 P200 				; Delay to allow TMC to detect stopped state
;;****************COPIED FROM HOME Z SCRIPT**********************
;G91                 ; relative positioning
;G1 H2 Z10 F1200     ; lift Z relative to current position
;G90                 ; absolute positioning
;G1 X187 Y187 F9000 	; Move to Middle of Bed
;M558 F750 			; Set the probing speed
;G30					; Probe a single point
;M400				;
;G4 P300 			;
;M558 F300 			; Set a slower probing speed
;G4 P300 			;
;G30	                ; Probe a single point
;G91                 ; relative positioning
;G1 Z5 F1200         ; lift Z relative to current position
;G90                 ; absolute positioning
;;*************** END *********************************************;



