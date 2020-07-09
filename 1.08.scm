


(define (cube x) (x * x * x))


(define (good-enough? guess x)
  (< (abs (- (cube guess )x)) 0.001)
)

(define (improve guess x)
  ()
)
