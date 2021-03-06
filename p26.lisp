; It's not pure functional version
(defun combination (n lst)
  (let ((res nil))
    (labels ((combination* (n lst prefix)
               (cond ((<= n 0) (setq res (cons (reverse prefix) res)))
                     ((null lst) nil)
                     (t (do ((x (first lst) (setq x (first r)))
                             (r (rest lst) (setq r (rest r))))
                            ((null x) nil)
                          (combination* (1- n) r (cons x prefix)))))))
      (combination* n lst nil)
      (reverse res))))
