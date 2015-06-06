(defun get-leaves-num (tree)
  (if (null tree) 0
      (if (and (null (second tree)) (null (third tree)))
          1
          (+ (get-leaves-num (second tree))
             (get-leaves-num (third tree))))))
