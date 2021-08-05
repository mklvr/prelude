(require 'prelude-programming)

(prelude-require-packages '(multi-term multi-vterm vterm))

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

(defun get-vterm ()
  "Switch to the term buffer last used, or create a new one if
    none exists, or if the current buffer is already a term."
  (interactive)
  (let ((b (last-term-buffer (buffer-list))))
    (if (or (not b) (eq 'vterm-mode major-mode))
        (multi-vterm)
      (switch-to-buffer b))))

;; If we've gone through the trouble of installing vterm, use that instead.
(if (require 'vterm nil :noerror)
    (progn
      (global-set-key (kbd "C-c '") 'get-vterm)
      (global-set-key (kbd "C-c \"") 'multi-vterm-dedicated-toggle))
  (progn
    (global-set-key (kbd "C-c '") 'get-term)
    (global-set-key (kbd "C-c \"") 'multi-term-dedicated-toggle)))

(add-hook 'term-mode-hook (lambda ()
                            (define-key term-raw-map (kbd "C-c C-a") 'term-send-home)
                            (define-key term-raw-map (kbd "C-c C-e") 'term-send-end)
                            (define-key term-raw-map (kbd "M-<backspace>") 'term-send-backward-kill-word)
                            ))
