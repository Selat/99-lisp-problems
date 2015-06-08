(defun get-leaves (tree)
  (if (null tree) nil
      (if (and (null (second tree)) (null (third tree)))
          (list (first tree))
          (append (get-leaves (second tree))
                  (get-leaves (third tree))))))
