(defun c:chris ()	; ver.1
 (initget "Yes No")
   (if
     (and
       (eq
	 (getkword "\nDo you think Kristof is awesome guy? [Yes/No] <No>: ")
	"Yes")
       (princ "Good choice,lad...")
	)
(c:dev)
     (princ "Wrong choice,mate...")
       )
        )
(defun c:dev (/ p1 p2 x1 y1 z1 x2 y2 z2 x3 y3 z3 x0 y0 z0 x y z xyloc zloc xr yr zr)
 (while
 (setq p1 (getpoint "
 Wybierz punkt teoretyczny: "))
 (setq p2 (getpoint "
 Wybierz punktu pomierzony: "))
 (setq x1 (car p1))
 (setq y1 (cadr p1))
 (setq z1 (caddr p1))
 (setq x2 (car p2))
 (setq y2 (cadr p2))
 (setq z2 (caddr p2))
 (setq xyloc (getpoint "
 Wybierz lokalizacje bloku z wektorami X,Y: "))
 (setq zloc (getpoint "
 Wybierz lokalizacje bloku z ró¿nic¹ rzêdna pomierzona - rzêdna teoretyczna  : "))
 
 (setq x0 ( - x1 x2 ))
 (setq y0 ( - y1 y2 ))
 (setq z0 ( - z2 z1 ))
 (setq x3 ( * x0 1000))
 (setq y3 ( * y0 1000))
 (setq z3 ( * z0 1000))
 (setq x (fix (atof (rtos x3 2 0))))
 (setq y (fix (atof (rtos y3 2 0))))
 (setq z (rtos z3 2 0))
 (setq xr (abs x))
 (setq yr (abs y))
 (if
	 (and
	   ( > x 0)
	   ( <= y 0)
	   )
 	(command "_INSERT" "n-w" xyloc "" "" "" xr yr "_INSERT" "develev" zloc "" "" "" z ))
  (if
	 (and
	   ( <= x 0)
	   ( <= y 0)
	   )  
	(command "_INSERT" "n-e" xyloc "" "" "" xr yr "_INSERT" "develev" zloc "" "" "" z ))
   (if
	 (and
	   ( > x 0)
	   ( > y 0)
	   
	   )  	
 	(command "_INSERT" "s-w" xyloc "" "" ""  xr yr "_INSERT" "develev" zloc "" "" "" z ))
   (if
	 (and
	   ( <= x 0)
	   ( > y 0)
	   )  
 	(command "_INSERT" "s-e" xyloc "" "" "" xr yr "_INSERT" "develev" zloc "" "" "" z ))

 )

  )