(use-package magit)

(use-package ivy
  :config
  (ivy-mode 1))

(use-package counsel
  :config
  (counsel-mode 1))

(use-package projectile
  :init
  (setq projectile-project-search-path (list project-folder))
  :config
  (projectile-mode +1)
  :bind-keymap
  ("C-x p" . 'projectile-command-map))

(use-package counsel-projectile
  :config
  (counsel-projectile-mode 1))

(provide 'init-extra)
