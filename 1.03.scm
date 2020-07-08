(define (sum-square a b c)
  (- (+ (square a)
        (square b)
        (square c)
      )
      (square(min a b c))
  )
)

(define (square a) (* a a))


(sum-square 1 2 3)