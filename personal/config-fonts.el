;; Set the default font and size based on machine
(when (string= (system-name) "carbon01.office.resultsgeneration.com")
  (set-default-font "Fira Mono-10"))

(when (string= (system-name) "forge")
  (set-default-font "Fira Code-10"))

(when (string= (system-name) "carbon-0")
  (set-default-font "Fira Code-9"))

(when (string= (system-name) "sorbus.atx.mklvr.io")
  (set-default-font "Fira Code-10"))

(require 'prelude-programming)
(prelude-require-packages '(all-the-icons))
