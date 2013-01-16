(include "my_math.lisp")
(define (fib n)
  (_fib 1 0 0 1 n ))
(define (_fib a b p q n)
  (cond ((= n 0) b)
        ((even? n) 
         (_fib a b
               (+ (* p p) (* q q))
               (+ (* 2 p q) (* q q))
               (/ n 2)))
        (else 
          (_fib (+ (* b q) (* a q) (* a p))
                (+ (* b p) (* a q))
                p
                q
                (- n 1)))))
(fib 0)
(fib 1)
(fib 2)
(fib 3)
(fib 4)
(fib 5)
(fib 6)
(fib 7)
(fib 8)
(fib 9)
(fib 10)

