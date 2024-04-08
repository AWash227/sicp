#lang sicp

(define (square x) (* x x))
(define (sum-of-squares x y) (+ (square x) (square y)))

(define (larger x y) (cond 
  ((> x y) x)
  ((> y x) y)
  (else x) ; otherwise they are equal so return either one we'll just choose x.
))

(define (sum-of-largest-two-squares x y z) (sum-of-squares (larger x y) (larger y z)))

(sum-of-largest-two-squares 1 2 3)
(sum-of-largest-two-squares 2 4 9)
(sum-of-largest-two-squares 9 4 2)