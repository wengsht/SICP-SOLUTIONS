(define (f x)
  (* x))
(define (inc x) (+ x 1))

; a)
(define (accumulate combiner null-value term a next b)
  (if (> a b) 
    null-value
    (combiner (term a) (accumulate combiner null-value term (next a) next b))))
(define (sum term a next b)
  (accumulate + 0 term a next b))
(define (product term a next b)
  (accumulate * 1 term a next b))
(sum f 1 inc 100)   ; 5050
(product f 1 inc 5) ; 5!

; b)
(define (accumulate combiner null-value term a next b)
  (define (iter-acc a result)
    (if (> a b) 
      result
      (iter-acc (next a) (combiner result (term a)))))
  (iter-acc a null-value))
(define (sum term a next b)
  (accumulate + 0 term a next b))
(define (product term a next b)
  (accumulate * 1 term a next b))
(sum f 1 inc 100)   ; 5050
(product f 1 inc 5) ; 5!
