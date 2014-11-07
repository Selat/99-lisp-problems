; TODO - support rotation for more than (length lst) units

(defun rotate (lst dlt)
  (let* ((prefix-size (if (< dlt 0) (+ (length lst) dlt) dlt))
         (expr (split lst prefix-size)))
    (append (second expr) (first expr))))
