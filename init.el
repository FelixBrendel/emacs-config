
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#3C3836" "#FB4933" "#86C9D3" "#8DD1CA" "#419BB0" "#A59FC0" "#3FD7E5" "#EBDBB2"])
 '(blink-cursor-mode t)
 '(custom-enabled-themes (quote (sanityinc-solarized-dark)))
 '(custom-safe-themes
   (quote
    ("4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "5eeb99062a978f545705eb94a8c3af3039a298621cf152f8f81296b9e99d10fa" "0ee3fc6d2e0fc8715ff59aed2432510d98f7e76fe81d183a0eb96789f4d897ca" default)))
 '(dnd-open-file-other-window t)
 '(doc-view-continuous t)
 '(elpy-mode-hook nil)
 '(elpy-modules
   (quote
    (elpy-module-company elpy-module-eldoc elpy-module-flymake elpy-module-pyvenv elpy-module-yasnippet elpy-module-sane-defaults)))
 '(flyspell-default-dictionary "deutsch8")
 '(focus-follows-mouse nil)
 '(global-diff-hl-mode t)
 '(inhibit-startup-screen t)
 '(menu-bar-mode nil)
 '(org-capture-templates
   (quote
    (("s" "Schedule entry" entry
      (file "~/org/notes.org")
      ""))))
 '(org-export-in-background t)
 '(org-highlight-latex-and-related (quote (latex script entities)))
 '(org-latex-caption-above nil)
 '(org-latex-classes
   (quote
    (("sig" "\\documentclass{sig-alternate}"
      ("\\section{%s}" . "\\section*{%s}")
      ("\\subsection{%s}" . "\\subsection*{%s}")
      ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
      ("\\paragraph{%s}" . "\\paragraph*{%s}")
      ("\\subparagraph{%s}" . "\\subparagraph*{%s}"))
     ("article" "\\documentclass[11pt]{article}"
      ("\\section{%s}" . "\\section*{%s}")
      ("\\subsection{%s}" . "\\subsection*{%s}")
      ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
      ("\\paragraph{%s}" . "\\paragraph*{%s}")
      ("\\subparagraph{%s}" . "\\subparagraph*{%s}"))
     ("report" "\\documentclass[11pt]{report}"
      ("\\part{%s}" . "\\part*{%s}")
      ("\\chapter{%s}" . "\\chapter*{%s}")
      ("\\section{%s}" . "\\section*{%s}")
      ("\\subsection{%s}" . "\\subsection*{%s}")
      ("\\subsubsection{%s}" . "\\subsubsection*{%s}"))
     ("book" "\\documentclass[11pt]{book}"
      ("\\part{%s}" . "\\part*{%s}")
      ("\\chapter{%s}" . "\\chapter*{%s}")
      ("\\section{%s}" . "\\section*{%s}")
      ("\\subsection{%s}" . "\\subsection*{%s}")
      ("\\subsubsection{%s}" . "\\subsubsection*{%s}")))))
 '(org-latex-pdf-process
   (quote
    ("pdflatex -interaction=batchmode -output-directory %o %f" "bibtex %b" "pdflatex -interaction=batchmode -output-directory %o %f" "pdflatex -interaction=batchmode -output-directory %o %f")))
 '(org-src-fontify-natively t)
 '(package-selected-packages
   (quote
    (ox-twbs ace-window move-text f org-ref use-package diff-hl focus-autosave-mode buffer-move weechat sublimity wolfram org-pdfview pdf-tools aggressive-indent elpy flycheck-pyflakes fancy-battery multiple-cursors pabbrev htmlize o-blog ob-browser org-bullets helm highlight-current-line hl-todo powerline org2blog magithub)))
 '(pos-tip-background-color "#1A3734")
 '(pos-tip-foreground-color "#FFFFC8")
 '(powerline-default-separator (quote wave))
 '(powerline-display-hud t)
 '(powerline-gui-use-vcs-glyph nil)
 '(powerline-height 25)
 '(powerline-text-scale-factor nil)
 '(save-place t)
 '(scroll-bar-mode nil)
 '(send-mail-function (quote mailclient-send-it))
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(tooltip-mode nil)
 '(tramp-syntax (quote default) nil (tramp)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Cousine" :foundry "outline" :slant normal :weight normal :height 113 :width normal))))
 '(diff-hl-change ((t (:inherit fringe :background "#073642" :foreground "orange"))))
 '(diff-hl-delete ((t (:background "#073642" :foreground "orange red"))))
 '(diff-hl-insert ((t (:inherit diff-added :background "#073642" :foreground "green"))))
 '(mode-line ((t (:background "#073642" :box nil :weight normal :height 1.0))))
 '(mode-line-buffer-id-inactive ((t (:inherit mode-line-buffer-id :box nil))))
 '(mode-line-inactive ((t (:inherit mode-line :background "#073642" :foreground "#586e75" :box nil :weight normal :height 1.0))))
 '(org-level-1 ((t (:inherit outline-1 :height 1.8))))
 '(org-level-2 ((t (:inherit outline-2 :height 1.5))))
 '(org-level-3 ((t (:inherit outline-3 :height 1.3))))
 '(package-name ((t (:foreground "SpringGreen3" :underline t))))
 '(powerline-active1 ((t (:background "#14282D" :foreground "#839496" :box nil))))
 '(powerline-active2 ((t (:background "#073642" :foreground "#839496" :box nil))))
 '(powerline-inactive1 ((t (:inherit mode-line-inactive :background "grey11" :box nil))))
 '(powerline-inactive2 ((t (:inherit mode-line-inactive :background "grey20" :box nil)))))

  (org-babel-load-file
     (expand-file-name "emacs-init.org"
                      user-emacs-directory))
