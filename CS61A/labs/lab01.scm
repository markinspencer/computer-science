;; Spencer Markin
;; Lab 01 2020-Feb-08

(load "../simply.scm")

(define (pigl wd)
	(if(pl-done? wd)
		(word wd 'ay)
		(pigl (word (bf wd) (first wd)))))

(define (pl-done? wd)
	(vowel? (first wd)))

(define (vowel? letter)
	(member? letter '(a e i o u)))
