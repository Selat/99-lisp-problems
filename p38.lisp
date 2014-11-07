(defun compare-phi-speed (n)
    (princ "Optimized: ") (time (phi n))
    (princ "Linear: ") (time (totient-phi n)))
