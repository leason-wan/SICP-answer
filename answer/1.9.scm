(define (inc x)
  (+ x 1))

(define (dec x)
  (- x 1))

(define (plusOne a b)
  (if (= a 0)
    b
    (inc (plusOne (dec a) b))
  )
)

(define (plusTwo a b)
  (if (= a 0)
    b
    (plusTwo (dec a) (inc b))
  )
)

(trace plusOne)
(plusOne 4 5)

; (trace plusTwo)
; (plusTwo 4 5)
