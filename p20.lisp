(defun remove-at (lst id)
  (cond ((null lst) nil)
		((= id 1) (rest lst))
		(t (cons (first lst) (remove-at (rest lst) (1- id))))))
