;Exercise 1.2
(/ (+ -1 4 (- 2 (- 3 (+ 6 (/ 4 5))))) (* 3 (- 6 2) (- 2 7)))

;Exercise 1.3
(define (square-sum x y)
  (+ (* x x) (* y y))
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

(defin (sqrt x)
       (my-sqrt 1.0 x)
       )

(sqrt .009)
