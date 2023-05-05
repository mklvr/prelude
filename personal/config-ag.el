(require 'prelude-programming)

(when (file-exists-p "/usr/bin/ag")
  (prelude-require-packages '(ag))

  (global-set-key (kbd "C-c C-a a") 'ag)
  (global-set-key (kbd "C-c C-a d") 'ag-dired)
  (global-set-key (kbd "C-c C-a r") 'ag-regexp))
