(define tolerance 0.00001)
(define (fix-point f first-guess)
  (define (close-enough v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (try-it x)
    (display "testing: ")
    (display x)
    (newline)
    (let ((next (f x)))
    (cond ((close-enough x next) x)
          (else (try-it (/ (+ next x) 2))))))  ; average
  (try-it first-guess))
(fix-point (lambda (x) (/ (log 1000) (log x))) 2.0)
; step 11

(define tolerance 0.00001)
(define (fix-point f first-guess)
  (define (close-enough v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (try-it x)
    (display "testing: ")
    (display x)
    (newline)
    (let ((next (f x)))
    (cond ((close-enough x next) x)
          (else (try-it next))))) ; not average
  (try-it first-guess))
(fix-point (lambda (x) (/ (log 1000) (log x))) 2.0)
; step 20+
