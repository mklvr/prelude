(require 'prelude-programming)
(prelude-require-packages '(kubernetes))

(global-set-key (kbd "<f7>") 'kubernetes-overview)
(straight-use-package '(kubernetes
             :ensure t
             :commands (kubernetes-overview)
             :config
             (setq kubernetes-poll-frequency 3600
                   kubernetes-redraw-frequency 3600)))
