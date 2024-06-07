(defun move (lst res)
(cond ((null lst) res)
      (t (move (cdr lst) (cons (car lst) res) ))
) )

(defun my_reverse (lst)
(move lst ()))