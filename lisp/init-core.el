(use-package magit)

(use-package ivy
  :config
  (ivy-mode 1))

(use-package counsel
  :config
  (counsel-mode 1))

(use-package projectile
  :init
  (setq projectile-project-search-path '("/home/HDD/Documents/7CC"))
  :bind-keymap
  ("C-c p" . projectile-command-map)
  :config
  (projectile-mode +1))

(use-package counsel-projectile
  :config
  (counsel-projectile-mode 1))

(use-package expand-region
  :bind
  ("C-=" . er/expand-region))

(use-package avy
  :bind
  ("C-:" . avy-goto-char))

(provide 'init-core)
