(define (cube-iter old guess x)
  (if (enough guess old)
    (exact->inexact guess)
    (cube-iter guess (improve guess x) x)
  )
)

(define (enough val oldVal)
  (< (/ (abs (- val oldVal)) oldVal) 0.01)
)

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (cube x)
  (cube-iter 0.1 1 x))

(cube 8)