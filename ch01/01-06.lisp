;计算new-if 要先求出sqrt-iter ，而不断得去请求，注意由于没有if的支持所以good_enough就算成功也会继续做sqrt_iter

(define (new-if pre f g)
  (cond (pre f)
        (else g))
  )
(define (sqrt_iter guess x)
  (new-if (good_enough (* guess guess) x) guess
    (sqrt_iter (average guess (/ x guess)) x)))
(my_sqrt 1.0)
