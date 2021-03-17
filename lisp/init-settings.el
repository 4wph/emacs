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
 custom-file (expand-file-name "custom.el" user-emacs-directory)
 tab-always-indent 'complete
 ido-enable-flex-matching t
 ido-everywhere t
 ido-create-new-buffer 'always
 package-native-compile t)

(show-paren-mode)
(electric-pair-mode)
(delete-selection-mode)
(ido-mode t)

(put 'inhibit-startup-echo-area-message 'saved-value t)
(defalias 'yes-or-no-p 'y-or-n-p)

(provide 'init-settings)
