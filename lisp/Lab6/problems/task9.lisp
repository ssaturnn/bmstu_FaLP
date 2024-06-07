(defun f (lst)
(cond 
((null lst) nil)
( (and (numberp (car lst)) (oddp (car lst))) (car lst))
( (listp (car lst)) (or (f (car lst)) (f (cdr lst)) ))
( (f (cdr lst)))
))