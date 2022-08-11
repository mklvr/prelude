;; php-config.el --- Php config for emacs prelude

(require 'prelude-programming)

(require 'prelude-web)

(prelude-require-packages '(groovy-mode))

(add-to-list 'auto-mode-alist '("^Jenkinsfile$" . groovy-mode))
