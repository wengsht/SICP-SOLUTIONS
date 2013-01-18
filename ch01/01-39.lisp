(define (cont-frac n d k)
  (define (iter n d k result)
    (let ((next (- k 1)))
    (if (= k 0) 
      result
      (iter n d next (/ (n k) (+ (d k) result))))))
  (iter n d k 0))
(define (tan-cf x k)
  (cont-frac 
    (lambda (i) 
      (* (if (= i 1) 1 -1) 
         (expt x i)))
    (lambda (i) (- (* 2 i) 1))
    k))
(tan-cf 1.0 100)