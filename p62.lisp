(defun get-internals (tree)
  (if (null tree) nil
      (append (if (and (null (second tree)) (null (third tree)))
                  nil
                  (list (first tree)))
              (get-internals (second tree))
              (get-internals (third tree)))))
