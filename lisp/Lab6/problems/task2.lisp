(defun flist (lst)
(cond 
( (and (listp (car lst) ) (not (null (car lst)))) (car lst))
((cdr lst) (flist (cdr lst)))
)) 