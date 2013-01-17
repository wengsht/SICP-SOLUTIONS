(include "01-32.lisp")
(sum (lambda (x) x) 1 (lambda (x) (+ x 1)) 100)

(define (f x y)
  ((lambda (a b)
    (+ (* x a a) 
       (* y b)
       (* a b)))
   (+ 1 (* x y))
   (- 1 y)))
(f 2 1)

(define (f x y)
  (let ((a (+ 1 (* x y)))
    (b (- 1 y)))
    (+ (* x a a)
       (* y b)
       (* a b))))
(f 2 1)

; 1.34
; (f f) -> (f 2) -> (2 2)  wrong
(define (f g)
  (g 2))
(f f)
