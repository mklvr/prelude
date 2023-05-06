;; Load and set hotkeys for spotify
(require 'prelude-programming)

(prelude-require-packages '(counsel-spotify))

(global-set-key (kbd "C-c > s a") 'counsel-spotify-search-artist)
(global-set-key (kbd "C-c > s t") 'counsel-spotify-search-track)
(global-set-key (kbd "C-c > s b") 'counsel-spotify-search-album)
(global-set-key (kbd "C-c > SPC") 'counsel-spotify-toggle-play-pause)
(global-set-key (kbd "C-c > n") 'counsel-spotify-next)
