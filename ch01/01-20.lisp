(gcd 206 40)

; (1) normal order
(if (= 40 0)
  206
  (gcd 40 (remainder 206 40)))

(gcd 40 (remainder 206 40))

(if (= (remainder 206 40) 0)
  40
  (gcd (remainder 206 40) (remainder 40 (remainder 206 40))))
; 1

(gcd (remainder 206 40) (remainder 40 (remainder 206 40)))

(if (= (remainder 40 (remainder 206 40)) 0)
  (remainder 206 40)
  (gcd (remainder 206 40) (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))))
; 2
;
(gcd (remainder 206 40) (remainder (remainder 206 40) (remainder 40 (remainder 206 40))))

(if (= (remainder (remainder 206 40) (remainder 40 (remainder 206 40))) 0)
  (remainder 206 40)
  (gcd (remainder (remainder 206 40) (remainder 40 (remainder 206 40))) (remainder (remainder 206 40) (remainder (remainder 206 40) (remainder 40 (remainder 206 40))))))
;4

(gcd (remainder (remainder 206 40) (remainder 40 (remainder 206 40))) (remainder (remainder 206 40) (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))))

(if (= (remainder (remainder 206 40) (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))) 0)
  (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))
  (gcd (remainder (remainder 206 40) (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))) (remainder (remainder (remainder 206 40) (remainder 40 (remainder 206 40))) (remainder (remainder 206 40) (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))))))
;6

(remainder (remainder 206 40) (remainder 40 (remainder 206 40)))
; 4
; 4+6+4+2+1 = 17
;

; applicative order
(gcd 206 40)

(if (= 40 0)
  206
  (gcd 40 (remainder 206 40)))

(if (= 40 0)
  206
  (gcd 40 6))
; 1

(gcd 40 6)

(if (= 6 0)
  40
  (gcd 6 (remainder 40 6)))

(if (= 6 0)
  40
  (gcd 6 4))
;1

(gcd 6 4)

(if (= 4 0)
  6
  (gcd 4 (remainder 6 4)))
; 1

(if (= 4 0)
  6
  (gcd 4 0))

(if (= 0 0)
  4
  (gcd 0 (remainder 4 0)))
; 1 even if it is ilegal

; 4
