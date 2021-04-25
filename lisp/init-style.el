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

(use-package org-superstar
  :hook (org-mode . org-superstar-mode))

(load-theme 'doom-vibrant t)

(provide 'init-style)
