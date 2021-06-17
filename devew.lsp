(defun c:devew ( / p1 p2 x1 x2 x3 x0 x xyloc); v.1
 (while
 (setq p1 (getpoint "
 Wybierz punkt teoretyczny: "))
 (setq p2 (getpoint "
 Wybierz punktu pomierzony: "))
 (setq x1 (car p1))
 (setq x2 (car p2))
 (setq xyloc (getpoint "
 Wybierz lokalizacje bloku z wektorem X: "))
 (setq x0 ( - x1 x2 ))
 (setq x3 (* x0 1000))
 (setq x (fix (atof (rtos x3 2 0))))
 (setq xr (abs x))
 
 (if
	 	   ( > x 0)
	    
 	(command "_INSERT" "DEVW" xyloc "" "" "" xr ) )
  (if
		   ( <= x 0)
	   	   	(command "_INSERT" "DEVE" xyloc "" "" "" xr ))
   

 )
 princ"nfinish")