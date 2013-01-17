(define tolerance 0.00001)
(define (iterative-improve good-enough? improve)
  (lambda (guess) 
    (if (good-enough? guess) guess
      ((iterative-improve good-enough? improve) (improve guess)))))
(define (sqrti x)
  ((iterative-improve 
    (lambda (guess) (< (abs (- (* guess guess) x)) tolerance))
    (lambda (guess) (/ (+ guess (/ x guess)) 2))) 
  1.0))
(sqrti 9)
(define (fixed-point f first-guess)
  (let ((next (f first-guess)))
  ((iterative-improve 
    (lambda (guess) (< (abs (- (guess next))) tolerance))
    (lambda (guess) (/ (+ guess (f guess)) 2))
    ) first-guess)))
(fix-point cos 1.0)
(fix-point (lambda (x) (+ 1 (/ 1 x))) 1.0)
