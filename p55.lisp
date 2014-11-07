(defun cbal-tree (n)
  (cond ((= n 0) nil)
        ((= n 1) '(x nil nli))
        (t (list 'x (cbal-tree (floor (/ (1- n) 2))) (cbal-tree (ceiling (/ (1- n) 2)))))))
