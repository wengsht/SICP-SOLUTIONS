(define (double x)
  (lambda (y) (x (x y))))
(((double (double double)) inc ) 5)
