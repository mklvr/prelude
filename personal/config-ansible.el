(require 'prelude-programming)

(prelude-require-package 'ansible)

(require 's)


(add-hook 'yaml-mode-hook
          (lambda ()
            (define-key yaml-mode-map [f4] 'compile)))

(add-hook 'yaml-mode-hook
          (lambda ()
            (set (make-local-variable 'compile-command)
                 (concat "make exec args=\"" (file-name-nondirectory buffer-file-name) "\""))
            (set (make-local-variable 'compilation-window-height) (concat "18"))))
