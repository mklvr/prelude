(require 'prelude-programming)

(prelude-require-packages '(terraform-mode))

(require 'terraform-mode)

(add-hook 'terraform-mode-hook #'terraform-format-on-save-mode)
