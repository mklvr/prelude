(require 'prelude-programming)
(prelude-require-packages '(request elfeed elfeed-protocol))

(global-set-key "\C-c\C-ne" 'elfeed)

(setq elfeed-use-curl nil)

(add-hook 'elfeed-show-mode-hook 'good-scroll-mode)
