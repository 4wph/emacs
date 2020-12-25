(setq
 make-backup-files nil
 create-lockfiles nil
 auto-save-default nil
 kill-whole-line t
 show-paren-delay 0
 frame-resize-pixelwise t
 inhibit-startup-screen t
 initial-scratch-message nil
 sentence-end-double-space nil
 ring-bell-function 'ignore
 use-dialog-box nil
 custom-file "~/.config/emacs/custom.el")

(global-visual-line-mode)
(show-paren-mode)
(electric-pair-mode)

(defalias 'yes-or-no-p 'y-or-n-p)

(provide 'init-settings)
