#lang sicp
#;
(define (+ a b)
  (if (= a 0) b (inc (+ (dec a) b))))

; (+ 2 4)
; (inc (+ (dec 2) 4)
; (inc (+ 1 4))
; (inc (inc (+ (dec 1) 4)))
; (inc (inc (+ 0 4)))
; (inc (inc (4)))
; (inc 5)
; 6
; Recursive Process

#;
(define (+ a b)
  (if (= a 0) b (+ (dec a) (inc b))))
; (+ 2 4)
; (+ (dec 2) (inc 4))
; (+ 1 5)
; (+ (dec 1) (inc 5))
; (+ 0 6)
; 6
; Iterative Process