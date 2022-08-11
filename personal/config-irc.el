;; config-irc.el --- Load erc modules and configure irc
(require 'prelude-programming)
(require 'prelude-erc)
(prelude-require-packages '(erc-hl-nicks))

;; Set default irc server list
(setq my-fav-irc '("chilopsis.sjc.mklvr.io"))
(setq erc-nick "mike")


;; Hide some types of messages in erc
(setq erc-hide-list '("JOIN" "PART" "QUIT"))

;; Use .authinfo for irc credentials
(setq erc-prompt-for-password nil)

(defun bitlbee-netrc-identify ()
  "Auto-identify for Bitlbee channels using authinfo or netrc."

  (interactive)
  (when (string= (buffer-name) "&bitlbee")
    (let* ((secret (plist-get (nth 0 (auth-source-search :max 1
							 :host erc-server
							 :user (erc-current-nick)
							 :port "6697"))
			      :secret))
	   (password (if (functionp secret)
			 (funcall secret)
		       secret)))

    (erc-message "PRIVMSG" (concat (erc-default-target) " " "identify" " " password) nil))))

;; Enable the netrc authentication function for &biblbee channels.
(add-hook 'erc-join-hook 'bitlbee-netrc-identify)
