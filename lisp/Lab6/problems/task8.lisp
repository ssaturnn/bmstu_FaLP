(defun allodd (lst)
(cond ((null lst) T)
((oddp (car lst)) (allodd (cdr lst)))
))