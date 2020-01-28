;; config-irc.el --- Load erc modules and configure irc
(require 'prelude-programming)
(require 'prelude-erc)

;; Set default irc server list
(setq my-fav-irc '("ulmus.dfw.mklvr.io"))

;; Hide some types of messages in erc
(setq erc-hide-list '("JOIN" "PART" "QUIT"))

;; Use .authinfo for irc credentials
(setq erc-prompt-for-password nil)
