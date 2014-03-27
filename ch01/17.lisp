(define (double x) (+ x x))
(define (halve x) (/ x 2))
(define (fast-mul a b)
  (cond ((= b 0) 0)
        ((= b 1) a)
        ((even? b) (double (fast-mul a (halve b))))
        (else (+ a (double (fast-mul a (halve (- b 1))))))))

(fast-mul 2 92)
