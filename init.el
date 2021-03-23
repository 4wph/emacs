(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(require 'init-package)

(ensure-package 'no-littering)
(require 'no-littering)

(require 'init-nano)

(require 'init-languages)

;; (require 'init-viper)

(require 'init-org)

(setq create-lockfiles nil
      auto-save-default nil
      backup-inhibited t
      custom-file (expand-file-name "custom.el" user-emacs-directory)
      kill-whole-line t
      frame-resize-pixelwise t)

(delete-selection-mode)

(ensure-package 'smartparens)
(require 'smartparens-config)
(sp-use-paredit-bindings)
(smartparens-global-strict-mode)

(ensure-package 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)

(ensure-package 'avy)
(global-set-key (kbd "C-:") 'avy-goto-char)

(defvar project-folder "/home/HDD/Documents/7CC")
(global-set-key (kbd "C-c p") (lambda () (interactive) (dired project-folder)))
(put 'dired-find-alternate-file 'disabled nil)
