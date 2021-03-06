(defun my-flatten (l)
  (cond ((null l) nil)
        ((atom (first l)) (cons (first l) (my-flatten (rest l))))
        (t (append (my-flatten (first l))
                   (my-flatten (rest l))))))
