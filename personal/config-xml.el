(add-hook 'xml-mode-hook (lambda () (rng-validate-mode -1)))
(add-hook 'nxml-mode-hook (lambda () (rng-validate-mode -1)))
