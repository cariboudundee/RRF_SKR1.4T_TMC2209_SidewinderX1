; =====================================================================================================================
;;Resets the LOAD button back to normal
; =====================================================================================================================
M581 T4 P-1		    ;Remove trigger4.g from E1(LOAD) - Load Macro
M581 T5 P-1		    ;Remove trigger5.g from E1(LOAD) - Purge Macro
M581 T3 P1 S1		;Re-assign trigger3.g to E1(LOAD) - Unload Filament Macro (Wait to reheat during print)
M581 T7 P1 S1		;Re-assign trigger7.g to E1(Load) - Run whenever UnLoaid Macro
M300 S2000 P300 	;Play sound

;M24			   ;Resume Print - This is no handled by trigger6.g
