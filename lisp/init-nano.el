(add-to-list 'load-path (expand-file-name "nano-emacs" user-emacs-directory))

(ensure-package 'counsel)
(ensure-package 'smex)

(require 'nano-layout)

;; (require 'nano-theme-dark)

(require 'nano-faces)
(nano-faces)

(require 'nano-theme)
(nano-theme)

(require 'nano-defaults)

(require 'nano-modeline)

(require 'nano-bindings)

(counsel-mode t)
(require 'nano-counsel)

(let ((inhibit-message t))
  (message "Welcome to GNU Emacs / N Λ N O edition")
  (message (format "Initialization time: %s" (emacs-init-time))))

(require 'nano-splash)

(require 'nano-help)

(menu-bar-mode -1)

(provide 'init-nano)
