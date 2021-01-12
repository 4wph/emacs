(use-package unicode-fonts
  :config
  (unicode-fonts-setup)); FIXME Fixes unicode slowdown

(use-package centaur-tabs
  :demand
  :init
  (setq centaur-tabs-style "bar"
	centaur-tabs-set-icons t
	centaur-tabs-set-modified-marker t
	centaur-tabs-height 32)
  :config
  (centaur-tabs-group-by-projectile-project)
  (centaur-tabs-headline-match)
  (centaur-tabs-mode t))

(use-package all-the-icons-ivy-rich
  :config
  (all-the-icons-ivy-rich-mode 1))

(use-package ivy-rich
  :config
  (ivy-rich-mode 1))

(add-hook 'prog-mode-hook 'display-line-numbers-mode)
(global-hl-line-mode 1)
(blink-cursor-mode 0)

(provide 'init-style-extra)
