(use-package snazzy-theme
  :config
  (load-theme 'snazzy t))

(use-package diminish
  :hook
  ((evil-god-state-entry . (lambda () (diminish 'god-local-mode)))
   (evil-god-state-exit . (lambda () (diminish-undo 'god-local-mode)))))

(provide 'init-style-min)
