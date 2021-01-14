(setq evil-want-keybinding nil
      evil-want-integration t); Needed for evil-Collection

(use-package evil-leader
  :config
  (global-evil-leader-mode)
  (evil-leader/set-key
    "p" projectile-command-map
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

(use-package god-mode)

(use-package evil-god-state
  :config
  (evil-define-key 'normal global-map (kbd "SPC") 'evil-execute-in-god-state)
  (evil-define-key 'god global-map [escape] 'evil-god-state-bail)); FIXME does not play well with projectile bindings

(use-package lispyville
  :hook
  ((emacs-lisp-mode lisp-mode clojure-mode hy-mode) . lispyville-mode)
  :config
  (lispyville-set-key-theme '(operators commentary prettify additional-motions slurp/barf-cp)))

(provide 'init-evil)
