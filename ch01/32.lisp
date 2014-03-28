; a) recursive
(define (accumulate combiner null-value term a nxt b)
  (if (> a b)
    null-value
    (combiner (term a)
              (accumulate combiner null-value term (nxt a) nxt b))))
(define (sum term a nxt b)
  (accumulate + 0.0 term a nxt b))
(define (product term a nxt b)
  (accumulate * 1.0 term a nxt b))
(define (identity x) x)
(sum identity 1 inc 100)
(product identity 1 inc 10)

; b) iterator
(define (accumulate combiner null-value term a nxt b)
  (define (inner a res)
    (if (> a b)
      res
      (inner (nxt a) (combiner res (term a)))))
  (inner a null-value))
(define (sum term a nxt b)
  (accumulate + 0.0 term a nxt b))
(define (product term a nxt b)
  (accumulate * 1.0 term a nxt b))
(define (identity x) x)
(sum identity 1 inc 100)
(product identity 1 inc 10)
