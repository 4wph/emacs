(setq evil-want-keybinding nil
      evil-want-integration t); needed for evil-collection

(ensure-package 'evil)
(evil-mode 1)

(ensure-package 'evil-collection)
(evil-collection-init)

(ensure-package 'evil-org)
(add-hook 'org-mode-hook 'evil-org-mode)
(require 'evil-org-agenda)
(evil-org-agenda-set-keys)

(ensure-package 'evil-surround)
(global-evil-surround-mode 1)

(ensure-package 'evil-commentary)
(evil-commentary-mode)

(ensure-package 'lispyville)
(lispyville-set-key-theme '(operators commentary prettify additional-motions slurp/barf-cp))
(hook-modes (quote (emacs-lisp lisp common-lisp clojure hy fennel scheme)) 'lispyville)

(provide 'init-evil)
