;; config-xclip.el --- Xclip support
(require 'prelude-programming)

(prelude-require-packages '(xclip))

(ignore-errors
  (xclip-mode 1))
