; 1. endless loop
; 2. 0
(define (p) (p))
(define (test x y)
  (if (= x 0) 0 y))
(p) ; endless loop
