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
  :bind
  (("C-c f" . projectile-find-file)
   ("C-c o" . projectile-switch-project)
   ("C-c k" . projectile-kill-buffers))
  :config
  (projectile-mode +1))

(use-package expand-region
  :bind
  ("C-=" . er/expand-region))

(provide 'init-core)
