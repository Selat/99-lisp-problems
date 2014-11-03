(defun goldbach-list (a b)
  (setq a (* 2 (ceiling (/ a 2))))
  (setq b (* 2 (ceiling (/ b 2))))
  (do ((x a (+ 2 x)))
	  ((>= x b) nil)
	(let ((r (goldbach x)))
	  (if (> (first r) 50)
		  (print (format nil "~d = ~d + ~d" x (first r) (second r)))))))