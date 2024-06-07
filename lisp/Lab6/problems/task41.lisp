(defun prod (lst num) (cond ((null lst) Nil)
						    (T (nconc (list (* (car lst) num)) (prod (cdr lst) num)))))