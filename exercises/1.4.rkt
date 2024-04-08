#lang sicp

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

#|
  I think that if b is greater than 0 then a and b will be added,
  otherwise they will be subtracted.
|#