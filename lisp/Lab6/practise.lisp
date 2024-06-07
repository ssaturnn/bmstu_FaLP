(defun insertion_fun (num lst)
  (cond ((null lst) (list num))                  
        ((<= num (car lst)) (cons num lst))    
        (t (cons (car lst) (insertion_fun num (cdr lst))))))


(defun insertion-sort (lst)
  (if (null lst)
      nil
      (insertion_fun (car lst)
                                (insertion-sort (cdr lst)))))
