(defun is-prime (n)
  (let ((prime t))
    (loop for x from 2 to (floor (sqrt n)) do
         (if (= 0 (rem n x)) (setq prime nil)))
    (if (<= n 1) nil prime)))
