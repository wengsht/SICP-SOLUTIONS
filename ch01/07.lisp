(define (improve guess x)
  (/ (+ guess (/ x guess)) 2.0))

; it will good if change smaller than 0.1% of guess
(define (good-enough? guess x)
  (< (abs (- guess (improve guess x))) (* 0.001 guess)))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x) x)))

(sqrt-iter 1.0 4.0)
(sqrt-iter 1.0 0.00000016)
