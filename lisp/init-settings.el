(setq
 make-backup-files nil
 create-lockfiles nil
 auto-save-default nil
 kill-whole-line t
 show-paren-delay 0
 frame-resize-pixelwise t
 inhibit-startup-screen t
 initial-scratch-message nil
 inhibit-startup-echo-area-message (user-login-name)
 sentence-end-double-space nil
 ring-bell-function 'ignore
 use-dialog-box nil
 custom-file (no-littering-expand-etc-file-name "custom.el")
 tab-always-indent 'complete)

(show-paren-mode)
(electric-pair-mode)
(delete-selection-mode)
;; (icomplete-mode)

(put 'inhibit-startup-echo-area-message 'saved-value t)

(defalias 'yes-or-no-p 'y-or-n-p)

;; (put 'dired-find-alternate-file 'disabled nil)
;; (add-hook 'dired-load-hook (lambda () (load "dired-x")))
;; (add-hook 'dired-mode-hook 'dired-hide-details-mode)

;; (require 'ibuf-ext)
;; (add-to-list 'ibuffer-never-show-predicates "^\\*")

(defvar project-folder "/home/HDD/Documents/7CC")

(provide 'init-settings)
