(require 'prelude-programming)

(prelude-require-package 'multi-term)

(setq explicit-shell-file-name "/bin/zsh")
(setq multi-term-dedicated-select-after-open-p t)
(setq multi-term-dedicated-skip-other-window-p t)

(defun last-term-buffer (l)
  "Return most recently used term buffer."
  (when l
    (if (eq 'term-mode (with-current-buffer (car l) major-mode))
        (car l) (last-term-buffer (cdr l)))))

(defun get-term ()
  "Switch to the term buffer last used, or create a new one if
    none exists, or if the current buffer is already a term."
  (interactive)
  (let ((b (last-term-buffer (buffer-list))))
    (if (or (not b) (eq 'term-mode major-mode))
        (multi-term)
      (switch-to-buffer b))))

(global-set-key (kbd "C-c '") 'get-term)
(global-set-key (kbd "C-c \"") 'multi-term-dedicated-toggle)
