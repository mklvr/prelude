(require 'prelude-programming)
(prelude-require-packages '(request elfeed elfeed-protocol))

(global-set-key "\C-c\C-ne" 'elfeed)

(setq elfeed-use-curl nil)
(setq elfeed-protocol-ttrss-maxsize 200) ;; bigger than 200 is invalid

(elfeed-protocol-enable)
