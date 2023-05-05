;; config-webpaste.el --- Webpaste support
(require 'prelude-programming)

(prelude-require-packages '(webpaste))

(global-set-key (kbd "C-c C-p p") 'webpaste-paste-region)
(setq webpaste-provider-priority '("paste.mozilla.org" "ix.io" "dpaste.org" "dpaste.com"))
