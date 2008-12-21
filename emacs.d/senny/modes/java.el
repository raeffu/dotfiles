(setq defer-loading-jde t)

(if defer-loading-jde
    (progn
      (autoload 'jde-mode "jde" "JDE mode." t)
      (setq auto-mode-alist
	    (append
	     '(("\\.java\\'" . jde-mode))
	     auto-mode-alist)))
  (require 'jde))

(setq jde-jdk (quote ("1.5")))
(setq jde-jdk-registry (quote (("1.5" . "/System/Library/Frameworks/JavaVM.framework/Versions/1.5"))))


(add-to-list 'load-path (expand-file-name (concat senny-config-dir "/vendor/jde/lisp")))
(add-to-list 'load-path (expand-file-name (concat senny-config-dir "/vendor/cedet/common")))
(load-file (expand-file-name (concat senny-config-dir "/vendor/cedet/common/cedet.el")))
(add-to-list 'load-path (expand-file-name (concat senny-config-dir "/vendor/elib")))

(add-hook 'jde-mode-hook
          '(lambda()
             ;; Indent width is two spaces.
             (setq c-basic-offset 2)
 
             ;; Show warnings and errors in code.
             ;(require 'jde-eclipse-compiler-server)
 
             ;; Activate flymake.
             ;(flymake-mode-on)
 
             ;; No "final" when auto creating methods and variables.
             (setq jde-gen-final-arguments nil)
             (setq jde-gen-final-methods nil)
 
             ;; Don't use JDE's builtin abbrevs.
             (setq jde-enable-abbrev-mode nil)
 
             ;; Generate getter and setter methods to variables.
             (define-key jde-mode-map (kbd "C-c C-v w") 'jde-wiz-get-set-methods)
 
             ;; Generate variables and getter and setter methods to them.
             (define-key jde-mode-map (kbd "C-c C-v g") 'jde-gen-get-set-methods)
 
             ;; Fix imports.
             (define-key jde-mode-map (kbd "C-c o")
               (lambda ()
                 (interactive)
                 (save-excursion
                   (jde-import-all)
                   (jde-import-organize)
                   (jde-import-kill-extra-imports))))
             ))
 
(provide 'java)

; jde
(setq auto-mode-alist
      (append
       '(("\\.java\\'" . jde-mode))
       auto-mode-alist))
