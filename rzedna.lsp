(defun c:rzedna (/ p1 x1 y1 z1 x2 y2 z2 x0 y0 z0 x y z xyloc zloc xr yr zr); v.1
 (while
 (setq p1 (getpoint "
 Wybierz rz�dn�: "))
 (setq z1 (caddr p1))
 (setq zloc (getpoint "
 Wybierz lokalzacj� bloku z rz�dn�  : "))
  (setq z  (rtos z1 2 3))
 	(command  "_INSERT" "rzedna" zloc "" "" "" z ))
   )