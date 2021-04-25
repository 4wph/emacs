(use-package clojure-mode)
(use-package haskell-mode)
(use-package lua-mode)
(use-package fennel-mode)
(use-package typescript-mode)
(use-package elm-mode)
(use-package hy-mode)
(use-package kivy-mode)
(use-package go-mode)

(use-package paredit			; lisp ast manipulation
  :hook
  ((clojure-mode hy-mode lisp-mode common-lisp-mode emacs-lisp-mode scheme-mode fennel-mode) . paredit-mode))

(use-package eglot); lsp

(provide 'init-languages)
