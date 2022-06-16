;; These are stupidly close to the undo macro.
(global-unset-key (kbd "C-="))
(global-unset-key (kbd "C--"))

;; Comment/Uncomment shortcuts.
(global-set-key (kbd "C->") 'comment-region)
(global-set-key (kbd "C-<") 'uncomment-region)

;; Set a find file shortcut from home directory
(defun counsel-fd-home ()
  (interactive)
  (cd "~/")
  (call-interactively 'counsel-fd-file-jump))

(global-set-key (kbd "C-c C-l h") 'counsel-fd-home)

;; Set a find file shortcut from projects directory
(defun counsel-fd-projects ()
  (interactive)
  (cd "~/")
  (call-interactively 'counsel-fd-file-jump))

(global-set-key (kbd "C-c C-l p") 'counsel-fd-projects)

;; Set a grep file shortcut from projects directory
(defun counsel-rg-projects ()
  (interactive)
  (cd "~/")
  (call-interactively 'counsel-rg))

(global-set-key (kbd "C-c C-g p") 'counsel-rg-projects)
