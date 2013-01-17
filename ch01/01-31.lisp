; a)
(define (product term a next b)
  (define (iter-pro a result)
    (if (> a b) 
      result
      (iter-pro (next a) (* (term a) result))))
  (iter-pro a 1))
(define (cube x)
  (* x x x))
(define (inc x) (+ x 1))
(product cube 1 inc 2)  ; 1^3*2^3

; b) 
(define (product term a next b)
    (if (> a b) 
      1
      (* (term a) (product term (next a) next b))))
