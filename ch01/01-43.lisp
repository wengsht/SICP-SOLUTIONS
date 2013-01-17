(define (square x) (* x x))
(define (inc x) (+ x 1))
(define (compose a b)
  (lambda (x) (a ( b x))))
(define (repeated f n)
  (if (= n 1) (lambda (x) (f x))
    (compose (repeated f (- n 1)) f)))
((repeated square 2) 5)
