(define (add-leaf t x)
  (if 
    (is_leaf t) t 
    (begin 
      (define mapped-branches (map (lambda (branch) (add-leaf branch x)) (branches t)))
      (tree (label t) (append mapped-branches (list (tree x '()))))
    )
  )
)
