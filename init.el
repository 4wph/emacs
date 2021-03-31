(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(require 'init-package)

(ensure-package 'no-littering)
(require 'no-littering)

(require 'init-settings)
(require 'init-bindings)

(require 'init-languages)
;; (require 'init-viper)

(require 'init-org)
