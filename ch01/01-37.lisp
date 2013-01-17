; a) iteration
(define (cont-frac n d k)
  (define (iter n d k result)
    (let ((next (- k 1)))
    (if (= k 0) 
      result
      (iter n d next (/ (n k) (+ (d k) result))))))
  (iter n d k 0))
(cont-frac (lambda (i) 1.0)
           (lambda (i) 1.0)
           12) ; k >= 12

; b) recursion
(define (cont-frac n d k)
  (define (iter n d k _index)
    (let ((next (+ _index 1)))
      (if (< k _index)
        0
        (/ (n _index) (+ (d _index) (iter n d k next))))))
  (iter n d k 1))
(cont-frac (lambda (i) 1.0)
           (lambda (i) 1.0)
           12) ; k >= 12
