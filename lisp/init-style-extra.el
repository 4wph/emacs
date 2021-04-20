(global-display-line-numbers-mode)
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

(provide 'init-style-extra)
