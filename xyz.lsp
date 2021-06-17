(defun c:xyz (/ p1 x1 y1 z1 x2 y2 z2 x0 y0 z0 x y z xyloc zloc xr yr zr); v.1
 (while
 (setq p1 (getpoint "
 Wybierz punkt wsp. XY i rzêdna : "))
 (setq x1 (car p1))
 (setq y1 (cadr p1))
 (setq z1 (caddr p1))
 (setq xyloc (getpoint "
 Wybierz lokalizacjê bloku  : "))
 (setq x (rtos x1 2 3))
 (setq y (rtos y1 2 3))
 (setq z (rtos z1 2 3))
 	(command  "_INSERT" "xyz" xyloc "" "" "" x y z ))
   )