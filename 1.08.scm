; cube root using Newton's method

(define (cbrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
      x)))

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (square x)
  (* x x))

(define (good-enough? guess x)
  (< (abs (/ (- guess (improve guess x)) guess)) 0.001))

(define (cbrt-cust x)
  (cbrt-iter 1.0 x))

(cbrt-cust 8)