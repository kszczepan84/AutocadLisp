(defun c:devwec (/ p1 p2 x1 y1 z1 x2 y2 z2 x0 y0 z0 x y z xyloc zloc xr yr zr L1 L2 L3 L4 L5 xy ang1 ang2 ang3 x01 y01 );v.1
 (while
 (setq p1 (getpoint "
 Wybierz punkt teoretyczny: "))
 (setq p2 (getpoint "
 Wybierz punktu pomierzony: "))
 (setq x1 (car p1))
 (setq y1 (cadr p1))
 (setq x2 (car p2))
 (setq y2 (cadr p2))
 (setq x0 ( - x1 x2 ))
 (setq x01 ( * x0 x0 ))
 (setq y0 ( - y1 y2 ))
 (setq y01 ( * y0 y0 ))
 (setq L1 ( + x01 y01 ))
 (setq L2 (sqrt L1))
 (setq L3 (* L2 1000))
 (setq L4 (fix (atof (rtos L3 2 0))))
 (setq L5 (abs L4))
 (setq ang1 (angle p1 p2))
 (setq ang2 ( * 360 ang1))
 (setq ang3 ( / ang2 6.28))
 (if 
	( and ( >= ang3 0)( <= ang3 90))
		 (command "_insert" "devwec" p1 "" "" (princ ang3) L5 ))
 (if
	( and ( >= ang3 270)( <= ang3 360))
		 (command "_insert" "devwec" p1 "" "" (princ ang3) L5 ))
(if
	( and ( > ang3 90)( < ang3 270 ))
		 (command "_insert" "devwec2" p1 "" "" (princ ang3) L5 ))

    )
 )

  