(require 'prelude-programming)

(prelude-require-packages '(emms))

(global-set-key (kbd "C-c > e e") 'emms-smart-browse)
(global-set-key (kbd "C-c > e l") 'emms-playlist-mode-go)
(global-set-key (kbd "C-c > e SPC") 'emms-pause)
(global-set-key (kbd "C-c > e n") 'emms-next)
(global-set-key (kbd "C-c > e b") 'emms-previous)
(global-set-key (kbd "C-c > e s") 'emms-stop)
(global-set-key (kbd "C-c > e r") 'emms-random)


(emms-all)
(setq emms-player-list '(emms-player-vlc)
      emms-info-functions '(emms-info-native))
