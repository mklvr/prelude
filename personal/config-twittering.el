;; config-twittering.el --- Load modules and configure twitter
(require 'prelude-programming)

(prelude-require-packages '(twittering-mode))

(global-set-key (kbd "C-c C-n w") 'twit)

(setq twittering-use-master-password t)
(setq twittering-icon-mode nil)
