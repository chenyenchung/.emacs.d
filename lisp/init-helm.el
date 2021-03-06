;; Helm-related settings
(require 'helm)
(require 'helm-descbinds)

(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-c h") 'helm-descbinds)
(global-set-key (kbd "C-c f") 'helm-swoop)


(provide 'init-helm)
