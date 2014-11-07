(defun compare-polindrome (l1 l2)
  (cond ((null l1))
        ((eq (first l1) (first l2))
         (compare-polindrome (rest l1) (rest l2)))
        (t nil)))

(defun sub-palindrome (l min-id max-id subl id)
  (cond ((<= id min-id)
         (sub-palindrome (rest l) min-id max-id (cons (first l) subl) (1+ id)))
        ((>= id max-id)
         (list l subl))
        (t (sub-palindrome (rest l) min-id max-id subl (1+ id)))))

(defun is-palindrome (l)
  (let* ((n (length l))
         (subl (sub-palindrome
                l (floor (/ n 2))
                (1+ (- n (floor (/ n 2))))
                nil 1)))
    (compare-polindrome (first subl) (second subl))))

(defun is-palindrome (l)
  (equal l (reverse l)))
