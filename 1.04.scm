; if b > 0 add the params, else subtract b from a

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))