(defun totient-phi (m)
  (let ((res (if (= m 1) 1 0)))
	(loop for x from 1 to (1- m) do
		 (if (= (gcd m x) 1) (setq res (1+ res))))
	res))
