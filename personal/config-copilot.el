(require 'prelude-programming)

(prelude-require-packages '(editorconfig))

(use-package copilot
  :straight (:host github :repo "copilot-emacs/copilot.el" :files ("*.el"))
  :init  (exec-path-from-shell-initialize)
  :ensure t)

(add-hook 'prog-mode-hook 'copilot-mode)
(define-key copilot-completion-map (kbd "C-<tab>") 'copilot-accept-completion)

(add-hook 'python-mode-hook 'copilot-mode)
(add-hook 'yaml-mode-hook 'copilot-mode)
(add-hook 'cperl-mode-hook 'copilot-mode)
(add-hook 'php-mode-hook 'copilot-mode)

(add-to-list 'copilot-indentation-alist '(prog-mode 2))
(add-to-list 'copilot-indentation-alist '(python-mode 4))
(add-to-list 'copilot-indentation-alist '(yaml-mode 2))
(add-to-list 'copilot-indentation-alist '(cperl-mode 4))
(add-to-list 'copilot-indentation-alist '(emacs-lisp-mode 2))
