
;; CountDown is one of:
;; - false
;; - Natural[1, 10]
;; - "complete"
;; interp.
;;    false          means countdown has not yet started
;;    Natural[1, 10] means countdown is running and how many seconds left
;;    "complete"     means countdown is over

(define CD1 false)
(define CD2 10)    ; just started running
(define CD3  1)    ; almost over
(define CD4 "complete")
#;(define (fn-for-countdown c)
  (cond [(false? c) (...)]
        [(and (number?c) (...c))] ;The simplification of
                                 ;[(and (number? c) (<= 1 c)
                                 ;(<= 10)) (... c)]
        [else (...)]))

;; Template rule used:
;; - one of: 3 cases
;; - atomic distinct: false
;; - atomic non-distinct: Natural[1, 10]
;; - atomic distinct: "complete"
