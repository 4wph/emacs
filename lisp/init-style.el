(use-package doom-themes
  :init
  (setq doom-themes-enable-bold t
	doom-themes-enable-italic t)
  :config
  (doom-themes-org-config))

(use-package all-the-icons
  :config
  (add-to-list 'all-the-icons-mode-icon-alist '(exwm-mode all-the-icons-fileicon "elisp" :height 1.0 :v-adjust 0.0))
  (add-to-list 'all-the-icons-extension-icon-alist '("hy" all-the-icons-alltheicon "python" :height 1.0 :face all-the-icons-dblue))
  (add-to-list 'all-the-icons-extension-icon-alist '("kv" all-the-icons-alltheicon "python" :height 1.0 :face all-the-icons-dblue)))

(use-package doom-modeline
  :config
  (doom-modeline-mode 1))

(load-theme 'doom-one t)

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

(use-package org-superstar
  :hook (org-mode . org-superstar-mode))

(provide 'init-style)
