(require 'prelude-programming)

(prelude-require-packages '(editorconfig))

(use-package copilot
  :straight (:host github :repo "zerolfx/copilot.el" :files ("dist" "*.el"))
  :ensure t)

(add-hook 'prog-mode-hook 'copilot-mode)
(define-key copilot-completion-map (kbd "C-<tab>") 'copilot-accept-completion)
