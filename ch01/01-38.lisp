(define (cont-frac n d k)
  (define (iter n d k result)
    (let ((next (- k 1)))
    (if (= k 0) 
      result
      (iter n d next (/ (n k) (+ (d k) result))))))
  (iter n d k 0))
(define (guess-e k) 
  (+ 
    2
    (cont-frac (lambda (i) 1.0)
               (lambda (i) 
                 (if (= (remainder i 3) 2) 
                   (* (/ (+ i 1) 3) 2)
                       1.0))
               k)))
(guess-e 100)
