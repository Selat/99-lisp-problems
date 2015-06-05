(defun or2 (a b)
  (or a b))

(defun and2 (a b)
  (and a b))

(defun not2 (a)
  (not a))

(defun nand2 (a b)
  (not (and2 a b)))

(defun nor2 (a b)
  (not (or a b)))

(defun xor2 (a b)
  (or2 (and2 (not2 a) b)
       (and2 a (not2 b))))

(defun impl2 (a b)
  (not2 (and2 a (not2 b))))

(defun equ2 (a b)
  (or2 (and2 (not2 a) (not2 b))
       (and2 a b)))

(defun print-table (f n)
  (labels ((f-print-table (prefix f id)
             (if (= id n)
                 (format t "~{~A ~}~A~%" prefix (apply f prefix))
                 (progn (f-print-table (cons t prefix) f (1+ id))
                        (f-print-table (cons nil prefix) f (1+ id))))))
    (f-print-table nil f 0)))
