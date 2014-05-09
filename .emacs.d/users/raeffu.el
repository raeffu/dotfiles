;; This is the user customization file. It gets only loaded when the username
;; of the logged in user matches the filename.

;; load last
(add-hook 'cabbage-initialized-hook
  (lambda ()

  ;; special keys
  ;(cabbage-global-set-key (kbd "<return>") (kbd "RET TAB"))
  (cabbage-global-set-key (kbd "<f6>") 'theme-roller-cycle)

  ;; general
  (global-unset-key (kbd "C-x m")) ; compose-mail
  (cabbage-global-set-key (kbd "C-x m") 'make-directory)
  (global-unset-key (kbd "C-<"))
  (cabbage-global-set-key (kbd "C-<") 'next-buffer)

  ;; set basic indent
  (setq c-basic-offset 2)

  (add-to-list 'auto-mode-alist '("\\.plugin.zsh$" . shell-script-mode))
  (add-to-list 'auto-mode-alist '("\\.zsh$" . shell-script-mode))
  (add-to-list 'auto-mode-alist '("\\.m$" . octave-mode))

))
