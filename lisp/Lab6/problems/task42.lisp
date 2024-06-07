(defun prod (lst num) (cond ((null lst) Nil)
							((listp (car lst)) (nconc (list (prod (car lst) num)) (prod (cdr lst) num)))
						    (T (nconc (list (* (car lst) num)) (prod (cdr lst) num)))))