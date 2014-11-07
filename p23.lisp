(defun rnd-select (lst n)
  (loop repeat n collect
       (let* ((rnd-id (random (length lst)))
              (x (nth rnd-id lst)))
         (setf lst (remove-at lst (1+ rnd-id)))
         x)))

(defun rnd-select (lst n)
  (labels ((rnd-select* (lst n res)
             (if (or (null lst) (<= n 0)) res
                  (let ((rnd-id (random (length lst))))
                    (rnd-select*
                     (remove-at lst (1+ rnd-id))
                     (1- n)
                     (cons (nth rnd-id lst) res))))))
    (rnd-select* lst n nil)))
