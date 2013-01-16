(define (average x y) 
  (/ (+ x y) 2))
(define mn 0.00000001)
(define (abs x)
  (if (> x 0) x (- x)))
(define (good_enough guess x)
  (< (abs (- guess x)) mn))
(define (sqrt_iter guess x)
  (if (good_enough (* guess guess) x) guess
    (sqrt_iter (average guess (/ x guess)) x)))
(define (my_sqrt x)
  (sqrt_iter (/ x 2) x))
(my_sqrt 3.14) ; 1.7720045152983679
(my_sqrt 9.0)  ; 3
(my_sqrt 2.0)    ;
(my_sqrt 1000000000000000000000000.0)
(my_sqrt 0.0000000000001)  ; can not done well
