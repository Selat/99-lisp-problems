(defun istree (lst)
  (if (atom lst) (null lst)
	  (and (= (length lst) 3) (istree (second lst))
		   (istree (third lst)))))
