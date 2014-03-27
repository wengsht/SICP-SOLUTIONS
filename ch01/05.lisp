(define (p) (p))
(define (test x y)
  (if (= x 0)
    0
    y))

(test 0 (p)) ; dead loop in applicative-order evaluation
