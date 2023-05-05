(require 'prelude-programming)

(prelude-require-packages '(notmuch))

(require 'notmuch)

(define-key notmuch-show-mode-map "d"
  (lambda ()
    "toggle deleted tag for message"
    (interactive)
    (if (member "deleted" (notmuch-show-get-tags))
        (notmuch-show-tag (list "-inbox"))
      (notmuch-show-tag (list "+inbox")))))

(define-key notmuch-search-mode-map "d"
  (lambda (&optional beg end)
    "toggle deleted tag for message"
    (interactive (notmuch-interactive-region))
        (notmuch-search-tag (list "-inbox") beg end)))
