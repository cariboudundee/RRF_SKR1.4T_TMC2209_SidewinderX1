G91              ; relative positioning
G1 H2 Z5 F1000  ; lift Z relative to current position
G90              ; absolute positioning
G1 X185 Y157 F15000 ; go to first probe point
G30              ; home Z by probing the bed