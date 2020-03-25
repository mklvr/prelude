;; config-irc.el --- Load erc modules and configure irc
(require 'prelude-programming)
(require 'prelude-erc)
(prelude-require-packages '(erc-hl-nicks))

;; Set default irc server list
(setq my-fav-irc '("ulmus.dfw.mklvr.io"))
(setq erc-nick "mike")


;; Hide some types of messages in erc
(setq erc-hide-list '("JOIN" "PART" "QUIT"))

;; Use .authinfo for irc credentials
(setq erc-prompt-for-password nil)

