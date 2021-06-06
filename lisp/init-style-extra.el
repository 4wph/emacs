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

(provide 'init-style-extra)
