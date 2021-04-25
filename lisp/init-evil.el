(setq evil-want-keybinding nil
      evil-want-integration t); needed for evil-collection

(use-package evil-leader
  :config
  (global-evil-leader-mode)
  (evil-leader/set-leader ",")
  (evil-leader/set-key
    "d" (lambda () (interactive) (dired project-folder))
    "k" 'kill-current-buffer
    "0" 'kill-buffer-and-window
    "b" (lambda () (interactive) (ibuffer))
    "t" (lambda () (interactive) (progn (split-window-below) (other-window 1) (eshell)))
    "p" projectile-command-map
    "g" 'magit))

;; TODO: Modal forms of C-c & C-x (god-mode?)

(use-package evil
  :config
  (evil-mode 1))

(use-package evil-collection
  :config
  (evil-collection-init))

(use-package evil-org
  :hook (org-mode . evil-org-mode)
  :config
  (require 'evil-org-agenda)
  (evil-org-agenda-set-keys))

(use-package evil-surround
  :config
  (global-evil-surround-mode 1))

(use-package evil-commentary
  :config
  (evil-commentary-mode))

(use-package lispyville
  :hook
  ((emacs-lisp-mode lisp-mode common-lisp-mode clojure-mode hy-mode fennel-mode scheme-mode) . lispyville-mode)
  :config
  (lispyville-set-key-theme '(operators commentary prettify additional-motions slurp/barf-cp)))

(provide 'init-evil)
