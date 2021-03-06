(defun range (l r)
  (labels ((range* (l r)
             (loop for x from l to r collect x)))
    (if (<= l r)
        (range* l r)
        (reverse (range* r l)))))

(defun range (l r)
  (labels ((range* (l r res)
             (if (<= l r)
                 (range* (1+ l) r (cons l res))
                 res)))
    (if (<= l r)
        (reverse (range* l r nil))
        (range* r l nil))))
