(require 'prelude-programming)
(prelude-require-packages '(request verb))

(with-eval-after-load 'org
  (define-key org-mode-map (kbd "C-c C-r") verb-command-map))

(global-set-key "\C-c\C-nt" 'traceroute)
(global-set-key "\C-c\C-nd" 'dig)
