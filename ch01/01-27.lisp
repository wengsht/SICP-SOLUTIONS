(include "my_math.lisp")
(define (expmod base ex m)
  (cond ((= ex 0) 1)
        ((even? ex) (remainder (pow2 (expmod base (/ ex 2) m)) m))
        (else (remainder (* base (expmod base (- ex 1) m)) m))))
(define (fermat-test n)
  (define (try-it a)
    (= (expmod a n n) a))
  (try-it (+ 1 (random (- n 1)))))
(define (fast-prime? n times)
  (cond ((= times 0) true)
        ((fermat-test n) (fast-prime? n (- times 1)))
        (else false)))
(fast-prime? 561 4)
(fast-prime? 1105 4)
(fast-prime? 1729 4)
(fast-prime? 2465 4)
(fast-prime? 2821 4)
(fast-prime? 6601 4)