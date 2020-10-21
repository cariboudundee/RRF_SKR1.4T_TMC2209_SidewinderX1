; =====================================================================================================================
;;This calls Unload Filament Macro then switched over to Load Filament on same button
; =====================================================================================================================
M300 S1000 P100  		;Play sound for Confirmation of button press
T0	 			        ;Reselect HotEnd to Active
M116 			    	;Wait for HotEnd Temp to stabilize
;M98 P"UnloadFilament.g"
;M581 T3 E1 S-1			;Deselct Trigger3 from E1
;M581 T4 E1 S0			;Assign E1 Load button to preform Trigger4 (Load New Filament)



