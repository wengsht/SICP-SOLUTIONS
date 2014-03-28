(define (fast-exp-mod base e mo)
  (define (normalize x)
    (if (and (= (remainder (square x) mo) 1) 
             (not (or (= x 1) (= x (- mo 1)))))
      0
      x))
  (cond ((= e 0) 1)
        ((even? e) (remainder (square (normalize (fast-exp-mod base (/ e 2) mo))) mo))
        (else (remainder (* (square (normalize (fast-exp-mod base (/ (- e 1) 2) mo))) base) mo))))
(define (fermat-test n)
  (define (try-it a)
    (= (fast-exp-mod a (- n 1) n) 1))
  (try-it (+ 1 (random (- n 1)))))
(define (fast-prime? n times)
  (cond ((= times 0) true)
        ((fermat-test n) (fast-prime? n (- times 1)))
        (else false)))
(define (prime? x)
  (cond ((< x 2) false)
        (else (fast-prime? x 10))))

; filtered-accumulate
(define (filtered-accumulate filter? combiner null-value term a nxt b)
  (if (> a b)
    null-value
    (combiner 
      (if (filter? a) 
        (term a)
        null-value)
      (filtered-accumulate filter? combiner null-value term (nxt a) nxt b))))
(define (all x) true)
; sum
(define (sum term a nxt b)
  (filtered-accumulate all + 0.0 term a nxt b))
; product
(define (product term a nxt b)
  (filtered-accumulate all * 1.0 term a nxt b))
; a
(define (identity x) x)
(define (inc x) (+ x 1))
(define (prime-sum a b)
  (filtered-accumulate prime? + 0.0 identity a inc b))
(prime-sum 10 100)
; b
(define (gcd a b)
  (if (= b 0)
    a
    (gcd b (remainder a b))))
(define (eular-product n)
  (define (inner? x)
    (= 1 (gcd x n)))
  (filtered-accumulate inner? * 1.0 identity 1 inc n))
(eular-product 10) ; 1 3 7 9
