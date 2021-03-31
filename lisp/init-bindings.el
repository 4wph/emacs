(global-set-key (kbd "C-c k") 'kill-current-buffer)

(global-set-key (kbd "C-c 0") 'kill-buffer-and-window)

(global-set-key (kbd "C-c b") (lambda () (interactive) (ibuffer)))

(global-set-key (kbd "C-c p") (lambda () (interactive) (dired project-folder)))

(provide 'init-bindings)
