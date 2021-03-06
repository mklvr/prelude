;; Load and set hotkeys for spotify
(require 'prelude-programming)

(prelude-require-packages '(helm-spotify-plus))

(global-set-key (kbd "C-c > s") 'helm-spotify-plus)
(global-set-key (kbd "C-c > f") 'helm-spotify-plus-next)
(global-set-key (kbd "C-c > b") 'helm-spotify-plus-previous)
(global-set-key (kbd "C-c > p") 'helm-spotify-plus-play)
(global-set-key (kbd "C-c > g") 'helm-spotify-plus-pause)
(global-set-key (kbd "C-c > SPC") 'helm-spotify-plus-toggle-play-pause)
