; =====================================================================================================================
;;Load Filament Macro Using Hardware Button "LOAD" connected to "E1" then re-assings burron to Trigger5 which is purge filament
; =====================================================================================================================
M300 S1000 P100		          ;Play sound for Confirmation of button press
M98 P"LoadFilament.g"   	  ;Call Filament Load Macro
M581 T4 P-1			          ;Deselct Trigger3 from E1
M581 T5 P1 S1			      ;Assign E1 Load button to preform Trigger4 (Load New Filament)
