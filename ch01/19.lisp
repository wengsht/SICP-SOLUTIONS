(define (fib n)
  (fib-iter 1 0 0 1 n))
(define (fib-iter a b p q cnt)
  (cond ((= cnt 0) b)
        ((even? cnt)
         (fib-iter a
                   b
                   (+ (* p p) (* q q))
                   (+ (* 2 p q) (* q q))
                   (/ cnt 2)))
        (else (fib-iter (+ (* b q) (* a q) (* a p))
                        (+ (* b p) (* a q))
                           p
                           q
                           (- cnt 1)))))

(fib 0)
(fib 1)
(fib 2)
(fib 3)
(fib 4)
(fib 5)
(fib 6)
(fib 7)