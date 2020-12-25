(use-package all-the-icons)

(use-package neotree
  :bind
  ([f8] . neotree-projectile-action))

(use-package doom-modeline
  :init
  (doom-modeline-mode 1))

(use-package doom-themes
  :config
  (doom-themes-neotree-config)
  (setq doom-themes-enable-bold t
	doom-themes-enable-italic t
	doom-themes-neotree-file-icons t)
  (load-theme 'doom-one t)
  (doom-themes-org-config))

(use-package org-superstar
  :hook
  ((org-mode) . (lambda () (org-superstar-mode 1))))

(provide 'init-style)
