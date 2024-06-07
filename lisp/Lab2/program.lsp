(defun f (x y) (+ (* x x) (* y y)))

(defun ff (x y) (eval(cons 'f(cons x(cons y Nil)))))

(FF 3 6)