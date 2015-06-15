(defun bin2gray (a)
  (logxor (ash a -1) a))

(defun gray2bin (a)
  (let ((b a)
        (mask (ash a -1)))
    (loop until (zerop mask) do
      (setf b (logxor b mask))
      (setf mask (ash mask -1)))
    b))

(defun next-gray (a)
  (bin2gray (1+ (gray2bin a))))
