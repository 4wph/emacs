(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

(set-face-attribute 'default nil  :family "Source Code Pro" :height 160 :weight 'normal)

(setq gc-cons-threshold most-positive-fixnum
      frame-inhibit-implied-resize t
      comp-deferred-compilation nil)
