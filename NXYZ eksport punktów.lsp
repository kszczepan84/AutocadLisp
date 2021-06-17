(defun c:nxyz(/ NR NP ZN PD B old_cmdecho WARSTWA NAZWA KOLOR)
	    (setq NAZWA (getstring "\Wybierz now� nazw� warstwy:"))
    (setq KOLOR (getint"\Wybierz nowy kolor warstwy [1,2,3,4,5,6,7] /:"))
    (setq old_cmdecho (getvar "cmdecho"))
    (setvar "cmdecho" 0)
    (initget (+ 1 2 4))

    (setq NR (getint "\nPodaj numer pierwszego punktu:"))
    (setq B (getreal "\Podaj wysokosc textu:"))
    (setq NP (getfiled "Wpisz nazwe pliku" "" "txt;csv;xls" 1))
    (SETQ PD (open NP "W"))
    (WRITE-line (strcat "Nr" "," "Y" "," "X" "," "Z" ) PD)
              (while
	  (setq WSKAZ_PUNKT (getpoint "\nWskaz punkt"))
	  (setq WSPӣRZEDNA_Y (RTOS (cadr WSKAZ_PUNKT) 2 3))
	  (setq WSPӣRZEDNA_X (RTOS (car WSKAZ_PUNKT) 2 3))
	  (setq WSPӣRZEDNA_Z (RTOS (caddr WSKAZ_PUNKT) 2 3))
	  (setq LINIA
	  (strcat (rtos NR)"," WSPӣRZEDNA_Y "," WSPӣRZEDNA_X "," WSPӣRZEDNA_Z );strcat
	  )
    	  (WRITE-line LINIA PD)
	     (DRAW_PUNKT)
	     (DRAW_TEXT)
	  (setq NR (1+ NR))
	);WHILE
    (close PD)
    (setvar "cmdecho" old_cmdecho)
    (princ "\nKoniec")
    (princ)
  );defun
;;; ---------------------------------------------------------------------------------- ;;;
(defun DRAW_TEXT (/)
  	  	 (command "_text" WSKAZ_PUNKT B "100" NR)
		 (command "_layer" "_m" NAZWA "_c" KOLOR "" "" )
  );defun
;;; ---------------------------------------------------------------------------------- ;;;
(defun DRAW_PUNKT (/ d kat_90 kat_270 p1 p2 p3 p4)
      	 (setq d (/ B 10))
	(command "_osmode" "63" "")
        (command "_layer" "_m" NAZWA "_c" KOLOR "" "" )
	(command "_circle" WSKAZ_PUNKT d)
  );defun
;;; ---------------------------------------------------------------------------------- ;;;
(princ
  (strcat
    "\nWpisz: nxyz" 
(alert"Wpisz NXYZ
Geostate 2016
All Rights Reserved")
  )

)