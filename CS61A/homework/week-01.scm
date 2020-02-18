;; Spencer Markin
;; Homework W01 2020-Feb-17

(load "../simply.scm")

;; Question 1:
;; Skipped was an essay question

;; Question 2:
;; Write a procedure squares that takes a sentence of numbers as its argument
;; and returns a sentence of the squares of the number

(define (squares s)
  (if (empty? s)
	  '()
	  (se (square (first s)) (squares (bf s)))))

;; Question 3:
;; Write a procedure switch that takes a sentence as its argument and returns
;; a sentence in which every instance of the words I or me is replaced by
;; you, while every instance of you is replaced by me except at the beginning
;; of the sentence, where it's replaced by I. (Don't worry about capitalization
;; of letters.)

(define (switch s) (switch-words s true))

(define (switch-words s start?)
  (if (empty? s)
      '()
      (se (switch-word (first s) start?) (switch-words (bf s) false))))

(define (switch-word w start?)
      (cond ((or (equal? w 'i) (equal? w 'me)) 'you)
	    ((and (equal? w 'you) start?) 'i)
	    ((equal? w 'you) 'me)
	    (else w)))



