#lang sicp

(define (p) (p))
(define (test x y)
  (if (= x 0) 0 y))

(test 0 p)

#|
  In applicative order, Ben should expect the result to be 0.
  In normal order, Ben should expect the result to never finish evaluation.
  This is because normal order would keep attempting to expand p forever and ever, whereas applicative
  order would have evaluated that first result in place and arrive at the answer immediately.
|#