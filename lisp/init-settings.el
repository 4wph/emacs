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
 custom-file (expand-file-name "custom.el" user-emacs-directory)
 package-native-compile t)

(show-paren-mode)
(electric-pair-mode)
(delete-selection-mode)

(defalias 'yes-or-no-p 'y-or-n-p)

(provide 'init-settings)
