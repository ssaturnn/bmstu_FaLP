(setf a '(+ - * /))

(defun b (operation_number listt)
    (apply (nth operation_number a) listt)
)
