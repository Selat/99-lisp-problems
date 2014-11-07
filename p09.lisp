(defun pack (l)
  (if (null l) nil
      (labels ((get-next-element-and-iterator (l element res)
                 (if (equal (first l) element)
                     (get-next-element-and-iterator (rest l) element (cons element res))
                     (values res l))))
        (multiple-value-bind (element nextl)
            (get-next-element-and-iterator l (first l) nil)
          (cons element (pack nextl))))))
