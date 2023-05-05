(setq enable-mu4e-on-this-host-p nil)

(when (string= system-name "saxifragum")
  (setq prelude-theme 'leuven))

(when (string= (system-name) "carbon01.office.resultsgeneration.com")
  (setq prelude-theme 'dracula))

(when (string= (system-name) "forge")
  (setq prelude-theme 'manoj-dark))

(when (string= (system-name) "carbon-0")
  (setq prelude-theme 'zenburn))

(when (string= (system-name) "aspen.undermountain.net")
  (setq prelude-theme 'gruvbox-dark-medium)
  (setq enable-mu4e-on-this-host-p nil))

(when (string= (system-name) "manzanita.fat.mklvr.io")
  (setq prelude-theme 'dracula))

(when (string= (system-name) "sycamore")
  (setq prelude-theme 'ubuntu))

(when (string=  (system-name) "carbon-1")
  (setq prelude-theme 'gruvbox-dark-medium))

(when (string=  (system-name) "manzanita")
  (setq prelude-theme 'dracula))

(when (string=  (system-name) "thymus")
  (setq prelude-theme 'dracula))

(when (string=  (system-name) "sassafras.fat.mklvr.io")
  (setq prelude-theme 'gruvbox-dark-medium))

(when (string=  (system-name) "olibanum.fat.mklvr.io")
  (setq prelude-theme 'apropospriate-light))

(when (string=  (system-name) "curcuma")
  (setq prelude-theme 'gruvbox-dark-medium))
