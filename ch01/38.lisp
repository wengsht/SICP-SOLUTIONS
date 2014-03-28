; iterator
(define (cont-frac n d k)
  (define (inner cnt res)
    (cond ((< cnt 1) res)
          (else (inner 
                  (- cnt 1) 
                  (/ (n cnt) 
                     (+ res 
                        (d cnt)))))))
  (inner k 0.0))
(+ 2.0 
   (cont-frac (lambda (x) 1.0)
              (lambda (x) 
                (define (mod32? x)
                  (= (remainder x 3) 2))
                (define (ceil x)
                  (+ 1 (floor x)))
                (define (get-mod-32 k)
                  (* 2
                     (ceil (/ k 3))))
                (cond ((mod32? x)
                       (get-mod-32 x))
                      (else 1.0)))
              10000))
