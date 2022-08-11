(require 'prelude-programming)

(prelude-require-packages '(org org-babel-eval-in-repl org-roam))

(require 'org)
(require 'org-babel-eval-in-repl)

(add-hook 'org-mode-hook #'toggle-truncate-lines)

;; org-roam config
(setq org-default-notes-file (concat org-directory "/misc.org"))
(setq org-roam-directory (file-truename "~/org"))
(org-roam-db-autosync-mode)
