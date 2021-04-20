(setq doom-themes-enable-bold t
      doom-themes-enable-italic t)

(ensure-package 'doom-themes)
(doom-themes-org-config)

(ensure-package 'all-the-icons)

(ensure-package 'doom-modeline)
(doom-modeline-mode 1)

(ensure-package 'org-superstar)
(add-hook 'org-mode-hook 'org-superstar-mode)

(load-theme 'doom-snazzy t)

(provide 'init-style)
