(ensure-package 'magit)

(ensure-package 'ivy)
(ivy-mode 1)

(ensure-package 'counsel)
(counsel-mode 1)

(ensure-package 'projectile)
(projectile-mode +1)
(global-set-key (kbd "C-x p") 'projectile-command-map)
(setq projectile-project-search-path (list project-folder))

(ensure-package 'counsel-projectile)
(counsel-projectile-mode 1)

(provide 'init-extra)
