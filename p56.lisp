(defun tree-equal-p (t1 t2)
  (if (or (atom t1) (atom t2)) (and (atom t1) (atom t2))
	  (and (tree-equal-p (second t1) (second t2))
		   (tree-equal-p (third t1) (third t2)))))

(defun symmetric-p (tree)
  (tree-equal (second tree) (third tree)))
