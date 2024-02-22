(setq enable-mu4e-on-this-host-p nil)

(when (string= (system-name) "manzanita.fat.mklvr.io")
  (setq prelude-theme 'dracula))

(when (string=  (system-name) "manzanita")
  (setq prelude-theme 'dracula))

(when (string=  (system-name) "thymus")
  (setq prelude-theme 'dracula))

(when (string=  (system-name) "acacia.fat.undermountain.net")
  (setq prelude-theme 'wombat))

(when (string=  (system-name) "amsinckia.fat.undermountain.net")
  (setq prelude-theme 'wombat))

(when (string=  (system-name) "toolbox")
  (setq prelude-theme 'smyx))
