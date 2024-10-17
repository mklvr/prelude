(require 'prelude-programming)

(prelude-require-packages '(editorconfig))

(use-package copilot
  :straight (:host github :repo "copilot-emacs/copilot.el" :files ("*.el"))
  :init  (exec-path-from-shell-initialize)
  :ensure t)

(add-hook 'prog-mode-hook 'copilot-mode)
(define-key copilot-completion-map (kbd "C-<tab>") 'copilot-accept-completion)

(add-to-list 'copilot-indentation-alist '(lisp-interactive-mode lisp-indent-offset))
(add-to-list 'copilot-indentation-alist '(emacs-lisp-mode lisp-indent-offset))
