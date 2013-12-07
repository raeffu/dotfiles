(setq cabbage-repository (expand-file-name "/Users/raeffu/Projects/cabbage/"))

(setq cabbage-org-files (expand-file-name "~/Dropbox/prog/org"))

(setq cabbage-bundles
      ;; The bundles listed here are enabled on emacs start.
      ;; Full list of bundles: https://github.com/senny/cabbage/wiki/Bundles

      '(
        accessibility
        rect-mark
        completion
        css
        cucumber
        diff
        ergonomic
        erlang
        git
        html
        java
        javascript
        lisp
        markdown
        power-edit
        project
        python
        ruby
        haml-and-sass
        yaml
        snippets

        ;; cabbage-developer
        rails
        ;; latex
        org
        ;; plone
        ;; eclim
        ;; eclim-auto-complete
        ;; eclim-company
        ;; maximize
        ;; coffee-script
        ;; less-css
        ))

;; see https://github.com/senny/theme-roller.el for a list of available themes
(setq cabbage-theme 'color-theme-lazy)

(load (concat cabbage-repository "cabbage"))
