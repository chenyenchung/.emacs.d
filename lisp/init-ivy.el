;; Ivy-related settings
(require 'ivy)

(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-x b") 'ivy-switch-buffer)
(global-set-key (kbd "C-c h") 'counsel-descbinds)
(global-set-key (kbd "C-c f") 'swiper)

(provide 'init-ivy)
