(require 'prelude-programming)
(prelude-require-packages '(request verb))

(with-eval-after-load 'org
  (define-key org-mode-map (kbd "C-c C-r") verb-command-map))

(global-set-key (kbd "C-c C-n t") 'traceroute)
(global-set-key (kbd "C-c C-n d") 'dig)
(global-set-key (kbd "C-c C-n n") 'netstat)
