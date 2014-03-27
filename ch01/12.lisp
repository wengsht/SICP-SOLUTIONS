(define (p r c)
  (cond ((< r c) 0)
        ((or (< r 2) (< c 2)) 1)
        (else (+ (p (- r 1) (- c 1)) (p (- r 1) c)))))

(p 5 1) ; 1
(p 5 2) ; 4
(p 5 3) ; 6
(p 5 4) ; 4
(p 5 5) ; 1
