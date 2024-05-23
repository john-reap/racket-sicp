#lang racket

(define (sum-of-squared x y)
  (+ (* x x) (* y y)))

(define (sum-of-squared-bigger-two x y z)
  (cond
    (
     (>= x y z)
     (sum-of-squared x y)
     )

    (
     (>= x z y)
     (sum-of-squared x z)
     )

    (
     (or(>=  y z x) (>=  z y x))
     (sum-of-squared y z))

    (else null)))

(sum-of-squared-bigger-two 1 2 3)
(sum-of-squared-bigger-two 3 2 1)
(sum-of-squared-bigger-two 1 3 2)
(sum-of-squared-bigger-two 1 1 1)