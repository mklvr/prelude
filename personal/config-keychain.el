(require 'prelude-programming)

(prelude-require-packages '(exec-path-from-shell))

(require 'exec-path-from-shell)
(exec-path-from-shell-copy-env "SSH_AGENT_PID")
(exec-path-from-shell-copy-env "SSH_AUTH_SOCK")
