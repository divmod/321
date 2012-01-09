#lang plai

(define-type GUI
  [label (text string?)]
  [button (text string?)
          (enabled? boolean?)]
  [choice (items (listof string?))
          (selected integer?)])

;; read-screen : GUI -> string
(define (read-screen a-gui)
  (type-case GUI a-gui
    [label (text) text]
    [button (text enabled?) "something else"]
    [choice (items selected) "a third thing"]))

(print-only-errors #t)
(test (read-screen (label "Pick a fruit:"))
      "Pick a fruit:")
