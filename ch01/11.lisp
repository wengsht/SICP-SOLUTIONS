(define (recursive-f n)
  (cond ((< n 3) n)
        (else (+ (recursive-f (- n 1))
                 (* 2 (recursive-f (- n 2)))
                 (* 3 (recursive-f (- n 3)))))))

(recursive-f 10) ; 1892


(define (iterative-f n)
  (define (inner-f f3 f2 f1 cnt)
    (if (< cnt 1) 
      f3
      (inner-f f2 f1 
               (+ f1 
                  (* 2 f2)
                  (* 3 f3))
               (- cnt 1))))
  (inner-f 0 1 2 n))

(iterative-f 10) ; 1892
