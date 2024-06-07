(defun check_borders (x1 x2 el) (and (> el x1) (< el x2)))

(defun select_between (lst x1 x2)
(cond
((null lst) NIL)
( (check_borders x1 x2 (car lst)) (cons (car lst) (select_between (cdr lst) x1 x2)) )
(T (select_between (cdr lst) x1 x2))))