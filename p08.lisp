(defun get-next-element-and-iterator (l)
  (labels ((func (l element)
			 (if (equal (first l) element)
				 (func (rest l) element)
				 (values element l))))
	(func l (first l))))

(defun compress (l)
  (if (null l) nil
	  (multiple-value-bind (element nextl)
		  (get-next-element-and-iterator l)
		(cons element (compress nextl)))))
