(defun at-level (tree level)
  (if (null tree) nil
      (if (zerop level) (list (first tree))
          (append (at-level (second tree) (1- level))
                  (at-level (third tree) (1- level))))))
