(require 'prelude-programming)

(prelude-require-packages '(org org-babel-eval-in-repl))

(require 'org)
(require 'org-babel-eval-in-repl)

(add-hook 'org-mode-hook #'toggle-truncate-lines)

;; (org-babel-do-load-languages 'org-babel-load-languages
;;     '(
;;         (shell . t)
;;     )
;; )
