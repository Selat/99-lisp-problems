(defun add (tree e)
  (cond ((null tree) (list e nil nil))
		((> (first tree) e) (list (first tree) (add (second tree) e) (third tree)))
		(t (list (first tree) (second tree) (add (third tree) e)))))

(defun construct (lst)
  (let ((res nil))
	(loop for x in lst do (setq res (add res x)))
	res))
