(define (new-if predicate a b)
  (cond (predicate a)
        (else b)))

(define (good-enough? guess x)
  (< (abs (- x (* guess guess))) 0.001))

(define (improve guess x)
  (/ (+ guess (/ x guess)) 2.0))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x) x)))

; it will be a dead recursive in applicative-order evaluation
(sqrt-iter 1.0 4.0)
