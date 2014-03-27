(define (improve guess x)
  (/ (+ (/ x 
           (* guess guess))
        (* 2 guess))
     3))

; it will good if change smaller than 0.1% of guess
(define (good-enough? guess x)
  (< (abs (- guess (improve guess x))) (* 0.001 guess)))

(define (cube-iter guess x)
  (if (good-enough? guess x)
          guess
          (cube-iter (improve guess x) x)))

(cube-iter 1.0 8.0)
(cube-iter 1.0 0.000000027)
