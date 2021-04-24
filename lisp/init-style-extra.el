(add-hook 'prog-mode-hook 'display-line-numbers-mode)
(global-hl-line-mode)

(ensure-package 'all-the-icons-ivy-rich)
(all-the-icons-ivy-rich-mode 1)

(ensure-package 'ivy-rich)
(ivy-rich-mode 1)

(ensure-package 'all-the-icons-dired)
(add-hook 'dired-mode-hook 'all-the-icons-dired-mode)

(ensure-package 'all-the-icons-ibuffer)
(setq  all-the-icons-ibuffer-human-readable-size t)
(all-the-icons-ibuffer-mode 1)

(ensure-package 'neotree)
(setq doom-themes-neotree-file-icons t)
(doom-themes-neotree-config)
(global-set-key [f8] 'neotree-projectile-action)

(ensure-package 'centaur-tabs)
(setq centaur-tabs-style "bar"
      centaur-tabs-set-icons t
      centaur-tabs-set-bar 'left
      centaur-tabs-height 30
      centaur-tabs-show-navigation-buttons t)
(centaur-tabs-mode t)
(define-key evil-normal-state-map (kbd "g t") 'centaur-tabs-forward)
(define-key evil-normal-state-map (kbd "g T") 'centaur-tabs-backward)

(provide 'init-style-extra)
