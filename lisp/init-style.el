(use-package all-the-icons)

(use-package neotree
  :init
  (setq neo-show-hidden-files t)
  :bind
  ([f8] . neotree-projectile-action))

(use-package doom-modeline
  :config
  (doom-modeline-def-modeline 'custom-modeline
    '(bar buffer-info)
    '(major-mode process vcs))
  (defun setup-custom-doom-modeline ()
    (doom-modeline-set-modeline 'custom-modeline 'default))
  (add-hook 'doom-modeline-mode-hook 'setup-custom-doom-modeline)
  (doom-modeline-mode 1))

(use-package doom-themes
  :init
  (setq doom-themes-enable-bold t
	doom-themes-enable-italic t
	doom-themes-neotree-file-icons t)
  :config
  (doom-themes-neotree-config)
  (load-theme 'doom-one t)
  (doom-themes-org-config))

(use-package org-superstar
  :hook
  ((org-mode) . (lambda () (org-superstar-mode 1))))

(provide 'init-style)
