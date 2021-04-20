(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

(ensure-package 'no-littering)
(require 'no-littering)

(provide 'init-package)
