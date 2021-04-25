(add-hook 'prog-mode-hook 'display-line-numbers-mode)
(global-hl-line-mode)

(use-package all-the-icons-ivy-rich
  :config
  (all-the-icons-ivy-rich-mode 1))

(use-package ivy-rich
  :config
  (ivy-rich-mode 1))

(use-package all-the-icons-dired
  :hook (dired-mode . all-the-icons-dired-mode))

(use-package all-the-icons-ibuffer
  :init
  (setq all-the-icons-ibuffer-human-readable-size t)
  :config
  (all-the-icons-ibuffer-mode 1))

(use-package neotree
  :init
  (setq doom-themes-neotree-file-icons t)
  :config
  (doom-themes-neotree-config)
  :bind
  ([f8] . neotree-projectile-action))

(use-package centaur-tabs
  :demand
  :init
  (setq centaur-tabs-style "bar"
	centaur-tabs-set-icons t
	centaur-tabs-set-bar 'left
	centaur-tabs-height 30
	centaur-tabs-show-navigation-buttons t)
  :config
  (centaur-tabs-mode t)
  (centaur-tabs-headline-match)
  :bind
  (:map evil-normal-state-map
	("g t" . centaur-tabs-forward)
	("g T" . centaur-tabs-backward)))

(provide 'init-style-extra)
