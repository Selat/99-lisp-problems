(defun form-list (element num)
  (let ((res nil))
	(dotimes (c num res) (setq res (cons element res)))))

(defun decode (l)
  (cond ((null l) nil)
		((atom (first l)) (cons (first l) (decode (rest l))))
		(t (append (form-list (second (first l)) (first (first l)))
				   (decode (rest l))))))
		
