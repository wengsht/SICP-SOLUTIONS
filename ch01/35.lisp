(define tolerance 0.00001)
(define (fix-point f guess)
  (define (close? a b)
    (< (abs (- a b)) tolerance))
  (let ((nxt (f guess)))
    (if (close? guess nxt)
      nxt
      (fix-point f nxt))))
; 1/x + 1 = x
; 1 + x = x^2
; x^2 - x - 1 = 0
; (x - 1/2)^2 = 5/4
; x - 1/2 = sqrt(5)/2
; x = (1 + sqrt(5))/2
(fix-point (lambda (x) (+ 1.0 (/ 1.0 x))) 1.0)
