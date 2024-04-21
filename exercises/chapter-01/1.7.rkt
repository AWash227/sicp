#lang sicp

; -----------------------------------------
; METHOD DEFINITIONS FOR FILE IGNORE ME
(define (square x) (* x x))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x) x)))

(define (improve guess x) 
  (average guess (/ x guess)))

(define (average x y) 
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt x)
  (sqrt-iter 1.0 x))
; -----------------------------------------

#|
  The tests are inadequate for small and large numbers as squaring and dividing doesn't scale well
  outside of a specific range. For example:
|#

(sqrt 1)
(sqrt 0.99999999)
(sqrt 0.09999999)
(sqrt 0.00999999)
(sqrt 0.00099999)
(sqrt 0.00009999)
(sqrt 0.00000999)
(sqrt 0.00000099)
(sqrt 0.00000009)
(sqrt 0.00000000)

(sqrt 9)
(sqrt 99)
(sqrt 999)
(sqrt 9999)
(sqrt 99999)
(sqrt 999999)
(sqrt 9999999)
(sqrt 99999999)
(sqrt 999999999)

#|
  With differing values there are VASTLY different outputs even though they shouldn't be.
  Below we overwrite good-enough and attempt again.
  It does work better because it helps us converge on the proper square root.
|#



