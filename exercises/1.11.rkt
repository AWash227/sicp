#lang racket
(define (f n)
  (if (< n 3) 
          n
          (+ (f (- n 1)) 
             (* 2 (f (- n 2)) 
             (* 3 (f (- n 3)))))))

(define (g n)
  (g-iter 0 1 2 n))

(define (g-iter a b c count)
  (cond ((= 0 count) a)
        (else (g-iter b c (+ c
                              (* 2 b)
                              (* 3 a))
                            (- count 1)))))

(map f (range 10))
(map g (range 10))

  
  ; I don't know how to do this :(