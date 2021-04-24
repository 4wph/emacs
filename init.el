(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(require 'util)

(require 'init-package)
(require 'init-settings)
(require 'init-org)
(require 'init-bindings)
;; (require 'init-viper)

(require 'init-languages)

(require 'init-extra)

(require 'init-evil)

(require 'init-style)
(require 'init-style-extra)
