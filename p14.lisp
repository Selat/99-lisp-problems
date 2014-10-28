(defun dupli (l)
  (mapcan #'(lambda (x) (list x x)) l))
