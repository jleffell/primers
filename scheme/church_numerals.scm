;; SICP Problem 2.6
;; Checking answers with http://jlongster.com/SICP-2.6--Church-Numerals
;; Took their print (display) function

(define zero
    (lambda (f)
        (lambda (x) x)))

(define (add-1 n)
    (lambda (f)
        (lambda (x) (f ((n f) x)))))

(define (add m n)
    (lambda (f)
        (lambda (x) ((m f) ((n f) x)))))

(define (mult m n)
    (lambda (f)
        (lambda (x) ((m (n f)) x))))

(define (exp m n)
    (lambda (f)
        (lambda (x) (((m n) f) x ))))

(define one (add-1 zero))
(define two (add-1 one))
(define three (add one two))
(define six (mult two three))
(define nine (exp two three))
(define one2 (exp zero nine))
(define zero2 (exp nine zero))

((one2 (lambda (x)
       (display x) (newline)
       x))
  "hello")
