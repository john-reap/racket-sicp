#lang racket

;; 引数aと、引数bの絶対値の和を求める
(define (a-plus-abs-b a b)
  ;; bが正の時は「+」演算子を、
  ;; bが負の時は「-」演算子を表現する。
  ((if (> b 0) + -) a b)
  )

(a-plus-abs-b 1 1) ;; 2
(a-plus-abs-b 1 -1) ;; 2
(a-plus-abs-b -1 1) ;; 0
(a-plus-abs-b -1 -1) ;; 0