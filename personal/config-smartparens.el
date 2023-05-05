(defun disable-smartparens-strict ()
  (smartparens-strict-mode -1))

(add-hook 'smartparens-enabled-hook 'disable-smartparens-strict t)
(add-hook 'smartparens-strict-enabled-hook 'disable-smartparens-strict t)

;; a great lisp coding hook
(defun prelude-lisp-coding-defaults ()
  (smartparens-strict-mode -1)
  (rainbow-delimiters-mode +1))

(setq prelude-lisp-coding-hook 'prelude-lisp-coding-defaults)

;; interactive modes don't need whitespace checks
(defun prelude-interactive-lisp-coding-defaults ()
  (smartparens-strict-mode -1)
  (rainbow-delimiters-mode +1)
  (whitespace-mode -1))

(setq prelude-interactive-lisp-coding-hook 'prelude-interactive-lisp-coding-defaults)
