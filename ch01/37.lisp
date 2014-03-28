; a) recursive
(define (cont-frac n d k)
  (define (inner cnt)
    (cond ((> cnt k) 0.0)
          (else (/ (n cnt) 
                   (+ (inner (+ 1 cnt))
                      (d cnt))))))
  (inner 1))
(cont-frac (lambda (x) 1.0)
           (lambda (x) 1.0)
           100)

;b) iterator
(define (cont-frac n d k)
  (define (inner cnt res)
    (cond ((< cnt 1) res)
          (else (inner 
                  (- cnt 1) 
                  (/ (n cnt) 
                     (+ res 
                        (d cnt)))))))
  (inner k 0.0))
(cont-frac (lambda (x) 1.0)
           (lambda (x) 1.0)
           1000)
