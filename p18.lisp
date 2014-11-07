(defun prefix (lst n cur)
  (if (<= cur n)
      (cons (first lst) (prefix (rest lst) n (1+ cur)))
      nil))

(defun slice (lst l r)
  (cond ((null lst) nil)
        ((= l 1) (prefix lst r 1))
        (t (slice (rest lst) (1- l) (1- r)))))
