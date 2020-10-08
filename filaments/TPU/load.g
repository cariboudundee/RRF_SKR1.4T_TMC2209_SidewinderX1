M291 P "Veuillez patienter pendant que la buse est en cours de chauffage" R "Chargement PLA" T5; Message affiché
G10 S200           ; Réglez la température actuelle de l'outil à 200 ° C 
M116               ; Attendre que les températures soient atteintes 
M291 P "Alimentation filament ..." R "Chargement PLA" T5; Afficher le nouveau message 
G1 E10 F600        ; Avancez 10 mm de filament à 600 mm / min 
G1 E50 F3000       ; Avancez 50 mm de filament à 3000 mm / min 
G1 E50 F300        ; Avancez 50 mm de filament à 300 mm / min 
G4 P1000           ; Attendez une seconde 
G1 E-10 F1800      ; Rétracter 10 mm de filament à 1800 mm / min 
M400               ; Attendez les mouvements pour terminer 
M292               ; Cachez le message 
G10 S0             ; Éteignez à nouveau le chauffage