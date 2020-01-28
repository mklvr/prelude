;; perl-config.el --- Perl config for emacs prelude

(require 'prelude-programming)
(require 'prelude-perl)


(defun perltidy-on-save ()
  "Sync org file to Raspberry Pi with external script."
  (when (eq major-mode 'cperl-mode)
    (save-mark-and-excursion)
    (save-selected-window)
    (perltidy-buffer)
    (reposition-window)))

(add-hook 'before-save-hook 'perltidy-on-save)

(add-to-list 'auto-mode-alist '("\\.t$" . cperl-mode))
