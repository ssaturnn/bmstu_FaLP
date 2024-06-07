(defun add (lst acc)
(cond
( (null lst) acc)
( (numberp (car lst)) (add (cdr lst) (+ acc (car lst))))
( T (add (cdr lst) acc))
))
(defun rec_add (lst) (add lst 0))


(defun add (lst acc)
(cond
( (null lst) acc)
( (numberp (car lst)) (add (cdr lst) (+ acc (car lst))))
( (listp (car lst)) 
(let ((sum (rec_add (car lst))))
(add (cdr lst) (+ acc sum))
))
(T (add (cdr lst) acc))
))

(defun rec-add (lst) (add lst 0))