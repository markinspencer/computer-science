;; Spencer Markin
;; Lab 01 2020-Feb-08

(load "../simply.scm")

;; Question 1:
;; Write a function that takes a word and outputs the word in pig latin.
;; Move the beginning of the word up to the first vowel to the end of 
;; the word and append "ay"
;; ex.  hello -> ellohay
;; ex.  program -> ogrampray

(define (pigl wd)
	(if(pl-done? wd)
		(word wd 'ay)
		(pigl (word (bf wd) (first wd)))))

(define (pl-done? wd)
	(vowel? (first wd)))

(define (vowel? letter)
	(member? letter '(a e i o u)))
