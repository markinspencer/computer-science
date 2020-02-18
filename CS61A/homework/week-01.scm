;; Spencer Markin
;; Homework W01 2020-Feb-17

(load "../simply.scm")

;; Skipped questions 1 and 6, they are essay questions.

;; Question 2:
;; Write a procedure squares that takes a sentence of numbers as its argument
;; and returns a sentence of the squares of the number

(define (squares nums)
  (if (empty? nums)
	  '()
	  (se (square (first nums)) (squares (bf nums)))))

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

;; Question 4:
;; Write a predicate ordered? that takes a sentence of numbers as its argument
;; and returns a true value if the numbers are in ascending order, or a false
;; value otherwise.

(define (ordered? nums)
  (if (< (length nums) 2)
      true
      (if (< (first nums) (first (bf nums)))
	  (ordered? (bf nums))
	  false)))

;; Question 5:
;; Write a procedure ends-e that takes a sentence as its argument and returns
;; a sentence containing only those words of the argument whose last letter is
;; E.

(define (ends-e s)
  (if (empty? s)
      '()
      (if (equal? (last (first s)) 'e)
	  (se (first s) (ends-e (bf s)))
	  (ends-e (bf s)))))

