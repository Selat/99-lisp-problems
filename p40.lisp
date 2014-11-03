(defun goldbach (n)
  (loop for x from 1 to n do (if (and (is-prime x) (is-prime (- n x)))
									  (return (list x (- n x))))))
