(setq extra-load-themes-dir "~/Projects/mklvr/replace-colorthemes")
(if (file-exists-p extra-load-themes-dir)
    (add-to-list 'custom-theme-load-path extra-load-themes-dir))

(setq enable-mu4e-on-this-host-p nil)

(when (string= (system-name) "manzanita.fat.mklvr.io")
  (setq prelude-theme 'dracula))

(when (string=  (system-name) "manzanita")
  (setq prelude-theme 'dracula))

(when (string=  (system-name) "thymus")
  (setq prelude-theme 'dracula))

(when (string=  (system-name) "acacia.fat.undermountain.net")
  (setq prelude-theme 'wombat))

(when (string=  (system-name) "alba.fat.undermountain.net")
  (setq prelude-theme 'gruvbox-light-medium))

(when (string=  (system-name) "toolbox")
  (setq prelude-theme 'smyx))

(when (string=  (system-name) "curcuma.fat.undermountain.net")
  (setq prelude-theme 'sitaramv-solaris))
