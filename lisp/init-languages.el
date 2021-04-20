(let ((modes (quote (clojure haskell lua fennel typescript elm hy kivy go))))
  (ensure-modes modes))

(ensure-package 'paredit); lisp ast manipulation
(hook-modes (quote (clojure hy lisp common-lisp emacs-lisp scheme fennel)) 'paredit)

(ensure-package 'eglot); lsp

(provide 'init-languages)
