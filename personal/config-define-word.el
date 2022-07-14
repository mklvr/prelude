(require 'prelude-programming)

(prelude-require-packages '(define-word))

(global-set-key (kbd "C-c C-d w") 'define-word-at-point)
(global-set-key (kbd "C-c C-d D") 'define-word)
