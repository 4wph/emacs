;; (use-package exwm)

;;; FIXME
(add-to-list 'load-path (expand-file-name "exwm/exwm" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "exwm/xelb" user-emacs-directory))

(start-process-shell-command "esctrl" nil "setxkbmap -layout us -option ctrl:nocaps")

(require 'exwm)

(exwm-input-set-key (kbd "<s-return>") (lambda () (interactive) (eshell)))
(exwm-input-set-key (kbd "s-b") (lambda () (interactive) (start-process-shell-command "qutebrowser" nil "qutebrowser")))
(exwm-input-set-key (kbd "s-e") (lambda () (interactive) (start-process-shell-command "pcmanfm" nil "pcmanfm")))

(require 'exwm-config)
(exwm-config-default)

(require 'exwm-systemtray)
(exwm-systemtray-enable)

(ido-mode -1); turns on ido by default?

(display-time-mode 1)

(provide 'init-exwm)
