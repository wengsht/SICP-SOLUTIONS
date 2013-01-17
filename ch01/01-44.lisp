(define dx 0.00001)
(define (compose a b) (lambda (x) (a ( b x))))
(define (repeated f n)
  (if (= n 1) (lambda (x) (f x))
    (compose (repeated f (- n 1)) f)))

(define (smooth f)
  (lambda (x) (/ (+ (f (- x dx)) (f x) (f (+ x dx))) 3)))
(define (smooth-n f n)
  (repeated (smooth f) n))

