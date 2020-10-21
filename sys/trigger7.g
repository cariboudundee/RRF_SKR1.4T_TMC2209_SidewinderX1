; =====================================================================================================================
;;This calls Unload Filament Macro then switched over to Load Filament on same button
; =====================================================================================================================
M300 S1000 P100 		         ; Play sound for Confirmation of button press
T0	 			                 ; Reselect HotEnd to Active
G10 P0 R0 S200              	 ; Set extruder to 200 and release
M190 S70						 ; Set heated bed to 70 and wait
M116 				             ; Wait for HotEnd Temp to stabilize
M98 P"UnloadFilament.g"          ; Execute UnloadFilament macro
M581 T3 P-1 			         ; Deselct Trigger3 from E1
M581 T7 P-1 			         ; Deselct Trigger7 from E1
M581 T4 P1 S1			         ; Assign E1 Load button to preform Trigger4 (Load New Filament)