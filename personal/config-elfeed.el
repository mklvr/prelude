(require 'prelude-programming)
(prelude-require-packages '(request elfeed elfeed-protocol))

(global-set-key "\C-c\C-ne" 'elfeed)

(setq elfeed-use-curl nil)
(setq elfeed-protocol-ttrss-maxsize 200) ;; bigger than 200 is invalid

;; (setq elfeed-feeds
;;       '(
;;         ("ttrss+https://mike@ttrss.mklvr.io/tt-rss"
;;          :use-authinfo t)
;;         ))

(elfeed-protocol-enable)
