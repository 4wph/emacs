(use-package evil
  :init
  (setq evil-want-keybinding nil
	evil-want-integration t)
  :config
  (evil-mode 1))

(use-package evil-collection
  :config
  (evil-collection-init))

(use-package evil-surround
  :config
  (global-evil-surround-mode 1))

(use-package evil-commentary
  :config
  (evil-commentary-mode))

(use-package god-mode)

(use-package evil-god-state
  :config
  (evil-define-key 'normal global-map " " 'evil-execute-in-god-state)
  (evil-define-key 'god global-map [escape] 'evil-god-state-bail))

; https://github.com/emacs-evil/evil-collection#faq
(use-package general
  :ensure t
  :init
  (setq general-override-states '(insert
                                  emacs
                                  hybrid
                                  normal
                                  visual
                                  motion
                                  operator
                                  replace))
  :config
  (general-define-key
   :states '(normal visual motion)
   :keymaps 'override
   "SPC" 'evil-execute-in-god-state))

(provide 'init-evil)
