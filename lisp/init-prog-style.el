(add-hook 'prog-mode-hook 'display-line-numbers-mode)
(global-hl-line-mode)

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

(provide 'init-prog-style)
