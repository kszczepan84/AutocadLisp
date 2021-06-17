(defun c:devns ( / p1 p2 y1 y2 y3 y0 y xyloc); v.1
 (while
 (setq p1 (getpoint "
 Wybierz punkt teoretyczny: "))
 (setq p2 (getpoint "
 Wybierz punktu pomierzony: "))
 (setq y1 (cadr p1))
 (setq y2 (cadr p2))
 (setq xyloc (getpoint "
 Wybierz lokalizacje bloku z wektorem Y: "))
 (setq y0 ( - y1 y2 ))
 (setq y3 (* y0 1000))
 (setq y (fix (atof (rtos y3 2 0))))
 (setq yr (abs y))
 
 (if
	 	   ( > y 0)
	    
 	(command "_INSERT" "DEVS" xyloc "" "" "" yr ) )
  (if
		   ( <= y 0)
	   	   	(command "_INSERT" "DEVN" xyloc "" "" "" yr ))
   

 )
 princ"nfinish")