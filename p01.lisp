(defun my-last (l)
  (if (null (rest l))
      (first l)
      (my-last (rest l))))
