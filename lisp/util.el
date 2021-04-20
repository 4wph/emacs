(defmacro ensure-package (package)
  (list 'unless (list 'package-installed-p package) (list 'package-install package)))

(defun ensure-packages (package-list)
  (dolist (package package-list)
    (ensure-package package)))

(defun mode-into-package (mode)
  (car (read-from-string (concat (prin1-to-string mode) "-mode"))))

(defun mode-into-hook (mode)
  (car (read-from-string (concat (prin1-to-string mode) "-mode-hook"))))

(defun ensure-modes (mode-list)
  (dolist (mode mode-list)
    (ensure-package (mode-into-package mode))))

(defun hook-modes (mode-list hooked-mode)
  (dolist (mode mode-list)
    (add-hook (mode-into-hook mode) (mode-into-package hooked-mode))))

(provide 'util)
