(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

(defmacro ensure-package (package)
  (list 'unless (list 'package-installed-p package) (list 'package-install package)))

(provide 'init-package)
