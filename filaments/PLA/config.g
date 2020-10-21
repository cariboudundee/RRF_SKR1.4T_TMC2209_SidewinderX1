# init config for pla
;M703
;M207 S2 R0.0 F3000 T3000 Z0.4                ; firmware retraction settings for PLA
; Heater model parameters
;M307 H0 A256.4 C1020.4 D0.3 S1.0 V0.0 B0     ;PLA PID setting 70°c
;M307 H1 A481.7 C145.5 D3.7 S1.0 V0.0 B0      ;PLA PID setting 210°c
;M566 X1200 Y1200 Z60 E3000                   ; jerk settings for PLA
;M204 P1000 T4000                             ; Set printing and travel accelerations