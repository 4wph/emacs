(org-babel-do-load-languages
 'org-babel-load-languages '((octave . t)
                             (R . t)
                             (python . t)
                             (gnuplot . t)))

(setq org-confirm-babel-evaluate nil)

(add-hook 'org-babel-after-execute-hook 'org-display-inline-images)
(add-hook 'org-mode-hook 'org-display-inline-images)

(require 'ox-beamer)

(provide 'init-org)
