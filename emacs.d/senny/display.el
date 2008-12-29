;; remove ui components
;(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
;(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

;; start maximized
(vendor 'maxframe)
(add-hook 'window-setup-hook 'maximize-frame t)

;; highlight the selected region
(transient-mark-mode)

;; highlight
(show-paren-mode)

;; Use a vertical bar as cursor
(blink-cursor-mode t)
(setq-default cursor-type '(bar . 2))


(require 'color-theme)
(when (fboundp 'color-theme-initialize)
  (color-theme-initialize))
(setq color-theme-is-global t)

(load-file (concat senny-config-dir "/senny/color-theme-twilight.el"))
(color-theme-twilight)