; small numbers - tolerance value similar to square root, approximation ends early
; big number - approximation may take a long time to be reached, due to slow approximation

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x
                 )))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (square x)
  (* x x))

(define (good-enough? guess x)
  (< (abs (/ (- guess (improve guess x)) guess)) 0.001))

(define (sqrt-cust x)
  (sqrt-iter 1.0 x))

(sqrt-cust 9)