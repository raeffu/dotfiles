(setq e-max-repository (expand-file-name "/Users/raeffu/Projects/e-max/"))

(setq e-max-bundles '(
                      accessibility
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

                      ;; e-max-developer
                      ;; rails
                      ;; latex
                      ;; org
                      ;; plone
                      ;; terminal
                      ;; eclim
                      ;; eclim-auto-complete
                      ;; eclim-company
                      ;; maximize
                      ;; coffee-script
                      ))

;; see https://github.com/senny/theme-roller.el for a list of available themes
(setq e-max-theme 'color-theme-lazy)

(load (concat e-max-repository "e-max"))
