(define (double x) (+ x x))
(define (halve x) (/ x 2))
(define (fast-mul a b)
  (define (inner-mul n x res)
    (cond ((= n 0) res)
          ((even? n) (inner-mul (halve n) (double x) res))
          (else (inner-mul (halve (- n 1)) (double x) (+ res x)))))
  (inner-mul b a 0))

(fast-mul 2 92)
(fast-mul 3 2)
(fast-mul 3 0)
(fast-mul 0 3)
(fast-mul 1 3)
(fast-mul 3 1)
