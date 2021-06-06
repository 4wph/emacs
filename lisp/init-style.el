(use-package doom-themes
  :init
  (setq doom-themes-enable-bold t
	doom-themes-enable-italic t)
  :config
  (doom-themes-org-config))

(use-package all-the-icons)

(use-package doom-modeline
  :config
  (doom-modeline-mode 1))

(load-theme 'doom-vibrant t)

(use-package org-superstar
  :hook (org-mode . org-superstar-mode))

(use-package dashboard
  :init
  (setq dashboard-center-content t
	dashboard-projects-switch-function 'counsel-projectile-switch-project-by-name
	dashboard-set-heading-icons t
	dashboard-set-file-icons t
	dashboard-items '((recents . 3)
			  (projects . 3)))
  :config
  (dashboard-setup-startup-hook))

(provide 'init-style)
