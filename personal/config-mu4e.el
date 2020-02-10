;; If mu4e is installed, configure mail settings
(when (file-exists-p "/usr/bin/mu")
  ;; make sure mu4e is in your load-path
  (require 'mu4e)
  (require 'smtpmail)

  ;; use mu4e for e-mail in emacs
  (setq mail-user-agent 'mu4e-user-agent)

  ;; Only needed if your maildir is _not_ ~/Maildir
  ;; Must be a real dir, not a symlink
  (setq mu4e-maildir "/home/moliver/Mail/undermountain.net/INBOX")

  ;; below are the defaults; if they do not exist yet, mu4e offers to
  ;; create them. they can also functions; see their docstrings.
  (setq mu4e-sent-folder   "/Sent")
  (setq mu4e-drafts-folder "/Drafts")
  (setq mu4e-trash-folder  "/Trash")
  (setq mu4e-refile-folder "/Archive")

  ;; Information about our user
  (setq
   user-mail-address "mike@undermountain.net"
   user-full-name  "Mike Oliver"
   mu4e-compose-signature
   (concat
    "Mike Oliver\n")))

;; Use zoho to send this stuff
(setq message-send-mail-function 'smtpmail-send-it
      smtpmail-stream-type 'starttls
      smtpmail-default-smtp-server "smtp.zoho.com"
      smtpmail-smtp-server "smtp.zoho.com"
      smtpmail-smtp-service 587)
