(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

(add-hook 'c++-mode-hook (lambda()
                           (c-set-style "awk")
                           (c-set-offset 'inlambda 0)
                           (abbrev-mode -1)
                           (flycheck-mode 1)
                           ))

(add-hook 'c-mode-hook (lambda()
                         (c-set-style "awk")
                         (c-set-offset 'inlambda 0)
                         (abbrev-mode -1)
                         (flycheck-mode 1)
                         ))
