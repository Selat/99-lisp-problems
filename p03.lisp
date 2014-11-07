(defun element-at (l id)
  (if (= id 1)
      (first l)
      (element-at (rest l) (1- id))))
