;; Spencer Markin
;; Lab 01B 2020-Feb-08

(load "../simply.scm")

;; Question 2:
;; Write a function that returns the plural version of the word that is passed
;; into it as an input. Solve for the following inputs
;;
;; boy -> boys
;; fly -> flies
;; book -> books
;; wolf -> wolves

(define (plural wd)
  (cond ((equal? (last wd) 'f) (word (bl wd) 'ves))
	((and (equal? (last wd) 'y) (not (vowel? (last (bl wd))))) (word (bl wd) 'ies))
	(else (word wd 's))))

(define (vowel? letter) (member? letter '(a e i o u)))

;; Question 3:
;; Define a procedure that takes three numbers as arguments and returns
;; the sum of the squares of the two larger numbers.

(define (q3 x y z)
  (-
    (+
      (square x)
      (square y)
      (square z))
    (min-square x y z)))

(define (min x y) (if (< x y) x y))

(define (min-square x y z) (min(min x y) (min x z)))

;; Question 4:
;; Write a procedure dupls-removed that, given a sentence as input, returns
;; the result of removing duplicate words from the sentence.

(define (dupls-removed s)
  (if (empty? s)
	  '()
	  (if (member? (first s) (bf s))
		  (dupls-removed (bf s))
		  (se (first s) (dupls-removed (bf s))))))

