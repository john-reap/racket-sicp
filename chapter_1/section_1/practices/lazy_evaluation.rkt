#lang racket

; ifによるパラメータ(オペランド)の遅延評価
(define (test x)
  (if (= x 0)
      (display "x is zero")
      (/ 1 x)))

(define (test2 x)
  (cond (= x 0)
        (display "x is zero")
        (else (/ 1 x)
              )
        ))

; (test 0)
(test2 0)
