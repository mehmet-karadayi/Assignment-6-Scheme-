#lang racket
(define (isPalindrome lst)
  (if (null? lst)
      #t
  (let ([last (reverse-list lst)]) last
    (equal? lst last))
   ))

(define (reverse-list l)
  (append (reverse (cdr l)) (list (car l)))
  )
  
  

        
