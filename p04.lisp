(defun my-size (l)
  (if (null l)
	  0
	  (1+ (my-size (rest l)))))
