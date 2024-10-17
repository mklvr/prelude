(require 'prelude-programming)

(prelude-require-packages '(org org-babel-eval-in-repl org-roam))

(require 'org)
(require 'org-babel-eval-in-repl)

;;(add-hook 'org-mode-hook #'toggle-truncate-lines)

;; org-roam config
(setq org-default-notes-file (concat org-directory "/misc.org"))
(setq org-roam-directory (file-truename "~/org"))
(setq org-road-db-location (file-truename "~/org/org-roam.db"))

(org-roam-db-autosync-mode)

(global-set-key (kbd "C-c 1 n") 'org-roam-node-find)
(global-set-key (kbd "C-c 1 i") 'org-roam-node-insert)
(global-set-key (kbd "C-c 1 v") 'org-roam-node-visit)
(global-set-key (kbd "C-c 1 1") 'org-roam-buffer-toggle)
(global-set-key (kbd "C-c 1 c") 'org-roam-capture)
(global-set-key (kbd "C-c 1 j") 'org-roam-dailies-capture-today)
(global-set-key (kbd "C-c 1 t") 'org-roam-dailies-find-today)

(setq org-roam-capture-templates
      '(("d" "default" plain
         "%?"
         :if-new (file+head "%<%Y%m%d%H%M%S>-${slug}.org" "#+title: ${title}\n")
         :unnarrowed t)
        ("r" "recipe" plain
         "* Ingredients\n  + %?\n\n* Directions\n\n* Source \n\n"
         :if-new (file+head "%<%Y%m%d%H%M%S>-${slug}.org" "#+title: ${title}\n#+filetags: :recipe:\n")
         :unnarrowed t)
        ("n" "nutrition" plain
         "* Nutrition\n| Food   | Protein | Carbs | Fats | Calories |\n|--------+---------+-------+------+----------|\n| %?       |         |       |      |          |\n|        |         |       |      |          |\n|        |         |       |      |          |\n|        |         |       |      |          |\n|        |         |       |      |          |\n|        |         |       |      |          |\n|        |         |       |      |          |\n|        |         |       |      |          |\n|        |         |       |      |          |\n| Totals |       0 |     0 |    0 |        0 |\n#+TBLFM: @11$2=vsum(@2..@10)::@11$3=vsum(@2..@10)::@11$4=vsum(@2..@10)::@11$5=vsum(@2..@10)
"
         :if-new (file+head "%<%Y%m%d%H%M%S>-${slug}.org" "#+title: ${title}\n#+filetags: :nutrition:\n")
         :unnarrowed t)
        ))

(org-babel-do-load-languages
 'org-babel-load-languages
 '((shell . t)
   (perl .t )))

(add-hook 'org-mode-hook 'olivetti-mode)
(add-hook 'org-mode-hook 'visual-line-mode)
