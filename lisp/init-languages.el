(ensure-package 'eglot); lsp

(defun mode-into-package (mode)
  (car (read-from-string (concat (prin1-to-string mode) "-mode"))))

(defun ensure-modes (mode-list)
  (dolist (mode mode-list)
    (ensure-package (mode-into-package mode))))

(let ((modes (quote (clojure haskell lua fennel typescript elm hy kivy go))))
  (ensure-modes modes))

(provide 'init-languages)
