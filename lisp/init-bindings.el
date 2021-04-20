(defvar project-folder "/home/HDD/Documents/7CC")
(global-set-key (kbd "C-c p") (lambda () (interactive) (dired project-folder)))

(global-set-key (kbd "C-c k") 'kill-current-buffer)

(global-set-key (kbd "C-c 0") 'kill-buffer-and-window)

(global-set-key (kbd "C-c b") (lambda () (interactive) (ibuffer)))

(global-set-key (kbd "C-c t") (lambda () (interactive) (progn (split-window-below) (other-window 1) (eshell))))

(provide 'init-bindings)
