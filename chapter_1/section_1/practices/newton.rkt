#lang racket

( define ( newton-algorithm x)
   (- x
      (/ (-
          (* x x)
          2)
         (* x 2)
         )
      )
   )

(define (nth-newton-algorithm x n)
   (cond
     (
      (> n 0)
      (nth-newton-algorithm
       (newton-algorithm x)
       (- n 1)
       )
      )
     (else x)))

(nth-newton-algorithm 5.0 1000)