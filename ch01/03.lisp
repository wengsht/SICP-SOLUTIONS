(define (maxSum a b c) 
  (- (+ a b c)
     (min a b c)))
(maxSum 1 2 3)
(maxSum 3 2 1)
(maxSum 3 1 2)
