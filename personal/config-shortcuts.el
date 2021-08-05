;; These are stupidly close to the undo macro.
(global-unset-key (kbd "C-="))
(global-unset-key (kbd "C--"))

;; Comment/Uncomment shortcuts.
(global-set-key (kbd "C->") 'comment-region)
(global-set-key (kbd "C-<") 'uncomment-region)
