(define (triple_max a b c)
  (cond ((> a b)
           (cond ((> a c) a)
                 (else c)
                 ))
        (else 
          (cond ((> b c) b)
                (else c))
          )
        )
  )
;(triple_max -1 4 3)   ; 4
;(triple_max 5 4 3)    ; 5
;(triple_max -1 4 6)   ; 6
