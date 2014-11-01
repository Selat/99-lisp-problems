(defun prime-range (l r)
  (let ((res nil))
	(loop for x from l to r do
		 (if (is-prime x) (setq res (cons x res))))
	(reverse res)))
