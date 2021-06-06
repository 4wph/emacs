;; (use-package exwm)

;;; FIXME
(add-to-list 'load-path (expand-file-name "exwm/exwm" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "exwm/xelb" user-emacs-directory))

(start-process-shell-command "esctrl" nil "setxkbmap -layout us -option ctrl:nocaps")
(start-process-shell-command "fixcursor" nil "xsetroot -cursor_name left_ptr")
(start-process-shell-command "ss" nil "xset s off")
(start-process-shell-command "dpms" nil "xset -dpms")

(require 'exwm)

(exwm-input-set-key (kbd "<s-return>") (lambda () (interactive) (eshell)))
;; (exwm-input-set-key (kbd "<M-s-return>") (lambda () (interactive) (counsel-linux-app)))

(exwm-input-set-key (kbd "s-b") (lambda () (interactive) (start-process-shell-command "qutebrowser" nil "qutebrowser")))
(exwm-input-set-key (kbd "s-e") (lambda () (interactive) (start-process-shell-command "pcmanfm" nil "pcmanfm")))

(require 'exwm-config)
(exwm-config-default)

(require 'exwm-systemtray)
(exwm-systemtray-enable)

(ido-mode -1); turns on ido by default

(display-time-mode 1)

(provide 'init-exwm)
