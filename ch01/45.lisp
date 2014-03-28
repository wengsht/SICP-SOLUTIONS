; fix-point
(define tolerance 0.00001)
(define (fix-point f guess)
  (define (close? a b)
    (< (abs (- a b)) tolerance))
  (let ((nxt (f guess)))
    (if (close? guess nxt)
      nxt
      (fix-point f nxt))))
; damp
(define (average a b)
  (/ (+ a b) 2.0))
(define (average-damp f)
  (lambda (x)
    (average x (f x))))
(define (damp-need-cnt n)
  (floor (/ (log n) (log 2))))
; repeated 
(define (compose f g)
  (lambda (x)
    (f (g x))))
(define (repeated f n)
  (cond ((= n 1) f)
        (else (compose f 
                       (repeated f (- n 1))))))

; sqrtn 
(define (square x) (* x x))
(define (even? x) (= (remainder x 2) 0))
(define (fast-expt x n)
  (cond ((= n 0) 1)
        ((even? n) (square 
                     (fast-expt x 
                                (/ n 2))))
        (else (* x 
                 (square 
                   (fast-expt x 
                              (/ (- n 1) 2)))))))
(define (sqrtn n num)
  (define (inner-sqrtn x n)
    (lambda (y)
      (/ x
         (fast-expt y (- n 1)))))
  (fix-point ((repeated average-damp
                        (damp-need-cnt n))
              (inner-sqrtn num n))
             1.0))
(sqrtn 16 65536.0)
(sqrtn 15 1231)
(fast-expt 1.6070793093691038 15)
(sqrtn 30 1231)
(fast-expt 1.2676811300972797 30)
