;Exercise 1.2
(/ (+ -1 4 (- 2 (- 3 (+ 6 (/ 4 5))))) (* 3 (- 6 2) (- 2 7)))

;Exercise 1.3
(define (square x)
  (* x x))
(define (square-sum x y)
  (+ (square x) (square y))
  )
(define (square-sum-larger x y z)
  (cond ((and (> x z) (> y z)) (square-sum x y))
        ((and (> x y) (> z y)) (square-sum x z))
        ((and (> y x) (> z x)) (square-sum y z))
    )
  )

;1.6

;Infinite Loop; sqrt-iter always evaluates itself

;1.7
(define (average x y)
  (/ (+ x y) 2)
  )
(define (improve guess x)
       (average guess (/ x guess))
       )
(define (small-variance? guess x)
  (> (abs (- (improve guess x) guess)) (* .001 guess ))
  )
(define (my-sqrt x)
  (if (small-variance? guess x)
    guess
    (my-sqrt (improve guess x))
    )
  )

(define (sqrt x)
       (my-sqrt 1.0 x)
       )

(sqrt .009)
;1.8
(define (cube x)
  (* x x x))

(define (cube-improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (good-enough? guess x)
  (< (abs (- (cube guess) x)) 0.001))

(define (cube-root-iter guess x)
  (if (good-enough? guess x)
    guess
    (cube-root-iter (cube-improve guess x) x)))

(define (cube-root x)
  (cube-root-iter 1.0 x))

(cube-root 3)
