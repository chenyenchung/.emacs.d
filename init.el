;; Add the directory for setting files into loading path
(add-to-list 'load-path(expand-file-name "lisp" user-emacs-directory))

;; Start Emacs with maximized windown
(add-hook 'window-setup-hook 'toggle-frame-maximized t)

;; Set homebrew and coreutils bin to $PATH
(add-to-list 'exec-path "/usr/local/bin")
(add-to-list 'exec-path "/usr/local/opt/coreutils/libexec/gnubin")

;; Load individual setting files
(require 'init-kbd)
(require 'init-pkg)
(require 'init-theme)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files '("~/Dropbox/Docs/notes/20200604.org"))
 '(package-selected-packages
   '(org-roam visual-fill-column helm-swoop counsel ivy swiper org org-bullets helm-descbinds company helm helm-describe-modes ess org-babel-eval-in-repl evil magit python-mode solarized-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
