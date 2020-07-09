;  applicative order p evaluated in the test, leading to infinite recursion
;  normal order - p is not evaluated as x == 0

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p))