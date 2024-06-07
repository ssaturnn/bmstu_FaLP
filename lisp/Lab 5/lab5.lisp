(defun fun (lst)
    (mapcar (lambda (el)
                (cond
                    ((numberp el) (cond
                                        ((> el 0) (- el 10))
                                        ((< el 0) (cond 
                                                        ((evenp el) (+ el 20))
                                                        (t (* el el))
                                                        ))
                                         (t el)
                                         )
                     )
                (t el)
                )
            )
    lst)
)