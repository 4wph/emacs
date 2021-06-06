(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

(set-face-attribute 'default nil  :family "Fira Mono" :height 160)

;; (load-theme 'adwaita)

(setq gc-cons-threshold most-positive-fixnum
      read-process-output-max (* 1024 1024)
      frame-inhibit-implied-resize t
      comp-deferred-compilation nil
      package-enable-at-startup nil
      inhibit-compacting-font-caches t)
