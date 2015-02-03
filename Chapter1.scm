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
