(defun c:develev (/ z1 z2 z3 z0 z zloc zr);v1
 (while
 (setq p1 (getpoint "
 Wybierz rz�dn� teoretyczn�: "))
 (setq p2 (getpoint "
 Wybierz rz�dn� pomierzon�: "))
 (setq z1 (caddr p1))
 (setq z2 (caddr p2))
 (setq zloc (getpoint "
 Wybierz lokalizacje bloku z r�nic� rz�dna pomierzona - rz�dna teoretyczna  : "))
 (setq z0 ( - z2 z1 ))
 (setq z3 (* z0 1000))
 (setq z (rtos z3 2 0))
 	(command "_INSERT" "develev" zloc "" "" "" z )
)
 )

  