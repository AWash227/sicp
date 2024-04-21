#lang racket

(define (pascal row col)
  (cond [(= col 0) 1]
        [(= col row) 1]
        [else (+ (pascal (- row 1) (- col 1))
                 (pascal (- row 1) col))]))

(define (get-row i)
  (map pascal (make-list i (- i 1)) (range i)))

(define (get-tri j)
  (map get-row (range j)))

(get-tri 6)