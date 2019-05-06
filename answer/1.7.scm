(define (sqrt-iter old guess x)
  (if (enough guess old)
    (exact->inexact guess)
    (sqrt-iter guess (improve guess x) x)
  )
)
(define (enough val oldVal)
  (> 0.01 
    (/ 
      (abs (- val oldVal)) 
      oldVal)
  )
)

(define (improve guess x)
  (averge guess (/ x guess)))

(define (averge x y)
  (/ (+ x y) 2))

(define (sqrt x)
  (sqrt-iter 0.1 1 x))

(sqrt 0.00009)