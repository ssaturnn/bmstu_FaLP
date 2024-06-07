(defun sqr (lst)
(cond 
( (cdr lst) (cons (* (car lst) (car lst)) (sqr (cdr lst))))
( T (list (* (car lst) (car lst)))
))
)

(defun sqr (lst &optional acc)
  (cond ((null lst) (nreverse acc))
        (t (sqr (cdr lst) (cons (* (car lst) (car lst)) acc)))))

