(defun my-reverse (l)
  (labels ((my-reverse* (l res)
             (if (null l) res
                 (my-reverse* (rest l) (cons (first l) res)))))
    (my-reverse* l nil)))
