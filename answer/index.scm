(define (sqrt-iter guess x)
  (if (enough guess x)
    (exact->inexact guess)
    (sqrt-iter (averge guess (/ x guess)) x))
  )

(define (enough guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (averge x y)
  (/ (+ x y) 2))

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
    (else else-clause)))

(define (sqrt x)
  (sqrt-iter 1 x))

(sqrt 9)