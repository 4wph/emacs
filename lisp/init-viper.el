(setq viper-mode t
      viper-inhibit-startup-message 't
      viper-expert-level '5
      viper-ex-style-motion nil
      viper-auto-indent t)

(require 'viper)

(set-face-attribute 'viper-minibuffer-insert nil :background nil :foreground "white")

(provide 'init-viper)
