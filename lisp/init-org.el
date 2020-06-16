;; Org-mode settings

; When a TODO item is done, prompt for a summary and put a time stamp.
(setq org-log-done 'note)


; Activate fancy bullet points for org-mode
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

; Indent the headings too
(add-hook 'org-mode-hook (lambda () (org-indent-mode 1)))


; Enable line wrapping per word at 80 characters
(add-hook 'org-mode-hook (lambda () (visual-line-mode 1)))
(add-hook 'org-mode-hook (lambda () (visual-fill-column-mode 1)))
(add-hook 'org-mode-hook (lambda () (setq fill-column 80)))

; Center the text region at the center of the buffer
(setq visual-fill-column-center-text t)

; Set different fonts for non-code contents in org-mode
'(variable-pitch ((t (:family "Avenir Next"))))

(defun set-buffer-variable-pitch ()
  ""
  (interactive)
  (variable-pitch-mode t)
  (setq line-spacing 6)
  ;; Define the contents that should remain fixed-pitch
  (set-face-attribute 'org-table nil :inherit 'fixed-pitch)
  (set-face-attribute 'org-code nil :inherit 'fixed-pitch)
  (set-face-attribute 'org-block nil :inherit 'fixed-pitch)
  )

(add-hook 'org-mode-hook (lambda () (set-buffer-variable-pitch)))

; Org-roam setting
(setq org-roam-directory "~/Dropbox/Docs/notes")
(require 'org-roam)
(define-key org-roam-mode-map (kbd "C-c n l") #'org-roam)
(define-key org-roam-mode-map (kbd "C-c n f") #'org-roam-find-file)
(define-key org-roam-mode-map (kbd "C-c n j") #'org-roam-jump-to-index)
(define-key org-roam-mode-map (kbd "C-c n b") #'org-roam-switch-to-buffer)
(define-key org-roam-mode-map (kbd "C-c n g") #'org-roam-graph)
(define-key org-mode-map (kbd "C-c n i") #'org-roam-insert)
(org-roam-mode +1)



(provide 'init-org)
