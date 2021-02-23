(setq evil-want-keybinding nil
      evil-want-integration t); Needed for evil-Collection

(use-package evil-leader
  :config
  (global-evil-leader-mode)
  (evil-leader/set-key
    "p" projectile-command-map
    ;; "l" lsp-command-map
    "!" 'projectile-run-async-shell-command-in-root
    "g" 'magit-status
    "s" 'avy-goto-char
    "a" 'org-agenda))

(use-package evil
  :config
  (evil-mode 1))

(use-package evil-collection
  :config
  (evil-collection-init))

(use-package evil-org
  :hook (org-mode . (lambda () evil-org-mode))
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
  ((emacs-lisp-mode lisp-mode clojure-mode hy-mode) . lispyville-mode)
  :config
  (lispyville-set-key-theme '(operators commentary prettify additional additional-motions slurp/barf-cp)))

(provide 'init-evil)
