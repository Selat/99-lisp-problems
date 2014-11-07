(defun encode (l)
  (mapcar #'(lambda (x)
              (list (length x) (first x)))
          (pack l)))
