#lang racket


(define sum
  (lambda (x)
    (if (= x 0)
        0
        (+ x ( sum (- x 1))))))

(define listSum
 (lambda (x)
   (cond
     ((null? x) x)
     ((symbol? x) x)
     ((number? x)  (if (= x 0) 0 (+ x (listSum (- x 1)))))
     ((cons? x) (cons (listSum (car x)) (listSum (cdr x)))))))


