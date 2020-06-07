;;; Keybinding remapping to load at initialization
(global-unset-key (kbd "C-z"))
(global-set-key (kbd "C-z") 'set-mark-command)
(global-set-key (kbd "C-x g") 'magit-status)


(provide 'init-kbd)
