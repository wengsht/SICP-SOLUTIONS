; a
(define (product term a nxt b)
  (if (> a b)
    1.0
    (* (term a)
       (product term (nxt a) nxt b))))
(define (identity x) x)
; a-1
(define (factorial n)
  (product identity 1 inc n))
(factorial 10)
; a-2
(define (pi4 n)
  (define (f x)
    (if (even? x)
      (/ x (inc x))
      (/ (inc x) x)))
  (product f 2 inc n))
(* (pi4 10000) 4.0)

; b
(define (product term a nxt b)
  (define (inner a res)
    (if (> a b)
      res
      (inner (nxt a) (* res (term a)))))
  (inner a 1.0))
(define (identity x) x)
; a-1
(define (factorial n)
  (product identity 1 inc n))
(factorial 10)
; a-2
(define (pi4 n)
  (define (f x)
    (if (even? x)
      (/ x (inc x))
      (/ (inc x) x)))
  (product f 2 inc n))
(* (pi4 1000000) 4.0)
