(defun my-but-last (l)
  (if (null (rest (rest l)))
      l
      (my-but-last (rest l))))
