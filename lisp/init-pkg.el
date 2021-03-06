;; package.el related
(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")
(require 'package)


;; Set repo address
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)

;; Activate Vim-mode at start up
(evil-mode 1)

;; Ask dired to display human-readable size
(setq dired-listing-switches "-alFh")

;; Enable ace-window
(require 'ace-window)
(global-set-key (kbd "C-x o") 'ace-window)

;; Enable company-mode globally
(add-hook 'after-init-hook 'global-company-mode)

;; Assign R executable path
(setq inferior-ess-r-program "/usr/local/bin/R")

;; Smex settings
;; (global-set-key (kbd "M-x") 'smex)
;; (global-set-key (kbd "M-X") 'smex-major-mode-commands)
;;;;  This is your old M-x.
;; (global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)


;; Load settings for individual packages
(require 'init-helm)
(require 'init-org)

(package-initialize)
(provide 'init-pkg)
