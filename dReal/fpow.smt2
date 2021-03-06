(set-logic QF_NRA)
(set-info :precision 0.001)
(declare-fun x1 () Real)
(declare-fun x2 () Real)
(assert (<= 1.0 x1))
(assert (<= x1 8.0))
(assert (<= 0.0349 x2))
(assert (<= x2 0.1745))
(assert (<= 1.0 ( * 3.14159265 (pow (* x1 (tan (* 0.5 x2)))  2))))
(check-sat)
(exit)
