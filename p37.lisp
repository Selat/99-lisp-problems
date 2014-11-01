(defun phi (m)
  (let ((divisors (prime-factors-mult m))
		(res 1))
	(loop for x in divisors do
		 (setq res (* res
					  (* (1- (first x)) (expt (first x) (1- (second x)))))))
	res))
