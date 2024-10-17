;; Use helm everywhere all the time
;;(require 'prelude-helm-everywhere)
;;(prelude-require-packages '(helm-rg))
(require 'prelude-programming)
(prelude-require-packages '(helm-ag helm-rg helm-projectile rg))

;; The built-in helm search doesn't seem to be working correctly
(define-key projectile-command-map (kbd "s r") 'helm-projectile-rg)
(define-key projectile-command-map (kbd "s s") 'helm-projectile-ag)
(define-key projectile-command-map (kbd "s g") 'helm-projectile-grep)
(define-key projectile-command-map (kbd "s p") 'helm-projectile-switch-project)
