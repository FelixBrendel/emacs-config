﻿;; utf-8 everywhere
;; (setq locale-coding-system 'utf-8)   ; pretty
;; (set-terminal-coding-system 'utf-8)  ; pretty
;; (set-keyboard-coding-system 'utf-8)  ; pretty
;; (set-selection-coding-system 'utf-8) ; please
(prefer-coding-system 'utf-8)           ; with sugar on top

(require 'package)
(load-library "url-handlers")

(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("org"   . "http://orgmode.org/elpa/"))

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(when (boundp 'w32-pipe-read-delay)
  (setq w32-pipe-read-delay 0))
(setq inhibit-compacting-font-caches t)

(require 'use-package)

(add-to-list 'load-path "~/.emacs.d/lisp/")

(byte-recompile-directory "~/.emacs.d/config" 0)

(load-file "~/.emacs.d/config/general.el")
(load-file "~/.emacs.d/config/systemdependent.el")
(load-file "~/.emacs.d/config/keybindings.el")
(load-file "~/.emacs.d/config/packages.el")
(load-file "~/.emacs.d/config/org.el")
(load-file "~/.emacs.d/config/functions.el")
(load-file "~/.emacs.d/config/theming.el")

(load-file "~/.emacs.d/config/languages/js.el")
(load-file "~/.emacs.d/config/languages/dart.el")
(load-file "~/.emacs.d/config/languages/go.el")
(load-file "~/.emacs.d/config/languages/c.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   (vector "#839496" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#eee8d5"))
 '(beacon-color "#dc322f")
 '(blink-cursor-mode t)
 '(company-auto-complete nil)
 '(company-clang-arguments nil)
 '(company-clang-executable "clang")
 '(company-clang-insert-arguments nil)
 '(company-dabbrev-downcase nil)
 '(company-idle-delay 0)
 '(company-lighter-base "(C)")
 '(company-minimum-prefix-length 1)
 '(company-posframe-mode t nil (company-posframe))
 '(company-show-numbers 1)
 '(company-tooltip-align-annotations t)
 '(company-tooltip-maximum-width 60)
 '(company-tooltip-minimum-width 60)
 '(company-transformers
   (quote
    (#[128 "\302\300\303\301\"\"\207"
           [cl-remove-if
            ((lambda
               (c)
               (or
                (string-match-p "[^ -]+" c)
                (string-match-p "[0-9]+" c)
                (if
                    (equal major-mode "org")
                    (>=
                     (length c)
                     20)))))
            apply append]
           6 "

(fn &rest ARGS2)"])))
 '(compilation-ask-about-save nil)
 '(compilation-auto-jump-to-first-error t)
 '(compilation-read-command nil)
 '(compilation-scroll-output (quote first-error))
 '(custom-safe-themes
   (quote
    ("36d50e2f9cdb35be79361f5087ac44ce0fa187b6c2cc2056e0370d870a2f5cf9" "4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" "8b4d8679804cdca97f35d1b6ba48627e4d733531c64f7324f764036071af6534" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" default)))
 '(eldoc-idle-delay 0.1)
 '(fci-rule-color "#073642")
 '(flycheck-check-syntax-automatically (quote (save idle-change mode-enabled)))
 '(flycheck-clang-args (quote ("-Wno-pragma-once-outside-header")))
 '(flycheck-clang-ms-extensions t)
 '(flycheck-clang-no-exceptions nil)
 '(flycheck-clang-warnings nil)
 '(flycheck-gcc-language-standard "c++11")
 '(flyspell-default-dictionary "deutsch8")
 '(frame-background-mode (quote dark))
 '(global-company-mode t)
 '(icomplete-mode t)
 '(isearch-allow-scroll t)
 '(ivy-count-format "(%d/%d) ")
 '(ivy-display-style (quote fancy))
 '(ivy-use-virtual-buffers t)
 '(ivy-virtual-abbreviate (quote full))
 '(markdown-fontify-code-blocks-natively t)
 '(menu-bar-mode nil)
 '(org-latex-default-table-environment "tabular")
 '(org-latex-hyperref-template nil)
 '(org-latex-listings (quote minted))
 '(org-latex-pdf-process (quote ("latexmk -pdf %f")))
 '(org-latex-prefer-user-labels t)
 '(package-selected-packages
   (quote
    (company-auctex auctex unicode-fonts all-the-icons-dired doom-modeline elpy ivy-posframe ivy-postframe buffer-expose dired-git-info spaceline iedit imenu-list dap-mode lsp-java modern-cpp-font-lock yasnippet-classic-snippets auto-complete auto-complete-clang-async counsel ivy-rich sr-speedbar racket-mode restclient counsel-tramp ivy-explorer markdown-mode drag-stuff evil flucui-themes flatui-dark-theme ivy-youtube md4rd markdown-mode+ wgrep deadgrep yasnippet-snippets yasnippet dart-mode ov w3 www-synonyms htmlize ox-gfm markdown-preview-mode comment-tags magit rainbow-delimiters yaml-mode telephone-line super-save clang-format cloc gradle-mode lsp-javascript-typescript company-lsp lsp-javascript-flow hy-mode ranger dired-ranger c-eldoc eglot lsp-clangd lsp-mode web-mode wrap-region pdf-tools octicons major-mode-icons mode-icons ivy-gitlab all-the-icons-ivy emmet-mode tide ng2-mode color-theme-sanityinc-solarized ox-twbs ox-reveal org-bullets wttrin wolfram treemacs-projectile treemacs rainbow-mode projectile-ripgrep projectile powerline multiple-cursors ivy hl-todo company-go go-mode flycheck-popup-tip flycheck dumb-jump diminish diff-hl browse-kill-ring company-posframe academic-phrases use-package)))
 '(pos-tip-background-color "#1A3734")
 '(pos-tip-foreground-color "#FFFFC8")
 '(rainbow-ansi-colors-major-mode-list (quote (sh-mode)))
 '(rainbow-x-colors-major-mode-list (quote (emacs-lisp-mode lisp-interaction-mode java-mode)))
 '(safe-local-variable-values
   (quote
    ((eval setq company-clang-arguments
           (list "-include" "../3rd/irrlicht/include/irrlicht.h" "-include" "../3rd/slime/include/libslime.h"))
     (eval setq company-clang-arguments
           (list "-include" "../3rd/irrlicht/include/irrlicht.h" "-include" "../3rd/slime/src/slime.h"))
     (setq company-clang-arguments
           (list "-include" "../3rd/irrlicht/include/irrlicht.h" "-include" "../3rd/slime/src/slime.h"))
     (eval company-clang-set-prefix "../3rd/irrlicht/include/irrlicht.h")
     (eval setq c-backslash-max-column 99)
     (eval setq c-backslash-max-column 120)
     (eval progn
           (defvar context-mode-map
             (make-sparse-keymap)
             "Keymap while context-mode is active.")
           (define-minor-mode context-mode "A temporary minor mode to be activated only specific to a buffer." nil :lighter " [f2]-Context" context-mode-map)
           (context-mode 1)
           (defun start-debugger nil
             (async-shell-command
              (concat "cdbg64.exe" " -t "
                      (expand-windows-path
                       (concat
                        (projectile-project-root)
                        "bin/slime.exe")))))
           (defhydra hydra-context
             (context-mode-map "<f2>")
             "Context Actions:"
             ("b" save-and-find-build-script-and-compile "build" :color blue)
             ("d" start-debugger "debug" :color blue)
             ("o" browse-file-directory "open" :color blue)
             ("q" nil "quit" :color blue))
           (define-key context-mode-map
             (kbd "<f2>")
             (quote hydra-context/body))
           (font-lock-add-keywords
            (quote c++-mode)
            (quote
             (("\\<\\(if_debug\\|if_windows\\|if_linux\\|defer\\|proc\\|try\\|try_void\\|for_array_list\\|for_lisp_vector\\|in_caller_env\\|for_lisp_list\\|ignore_logging\\|dont_break_on_errors\\)\\>" . font-lock-keyword-face)))))
     (eval progn
           (defvar context-mode-map
             (make-sparse-keymap)
             "Keymap while context-mode is active.")
           (define-minor-mode context-mode "A temporary minor mode to be activated only specific to a buffer." nil :lighter " [f2]-Context" context-mode-map)
           (context-mode 1)
           (defun start-debugger nil
             (async-shell-command
              (concat "cdbg64.exe" " -t "
                      (expand-windows-path
                       (concat
                        (projectile-project-root)
                        "bin/slime.exe")))))
           (defhydra hydra-context
             (context-mode-map "<f2>")
             "Context Actions:"
             ("b" save-and-find-build-script-and-compile "build" :color blue)
             ("d" start-debugger "debug" :color blue)
             ("o" browse-file-directory "open" :color blue)
             ("q" nil "quit" :color blue))
           (define-key context-mode-map
             (kbd "<f2>")
             (quote hydra-context/body))
           (font-lock-add-keywords
            (quote c++-mode)
            (quote
             (("\\<\\(if_debug\\|if_windows\\|if_linux\\|defer\\|proc\\|try\\|try_void\\|without_logging\\)\\>" . font-lock-keyword-face)))))
     (org-confirm-babel-evaluate)
     (eval progn
           (defvar context-mode-map
             (make-sparse-keymap)
             "Keymap while context-mode is active.")
           (define-minor-mode context-mode "A temporary minor mode to be activated only specific to a buffer." nil :lighter " [f2]-Context" context-mode-map)
           (context-mode 1)
           (defhydra hydra-context
             (context-mode-map "<f2>")
             "Context Actions:"
             ("b" save-and-find-build-script-and-compile "build" :color blue)
             ("o" browse-file-directory "open" :color blue)
             ("q" nil "quit" :color blue))
           (define-key context-mode-map
             (kbd "<f2>")
             (quote hydra-context/body))
           (font-lock-add-keywords
            (quote c++-mode)
            (quote
             (("\\<\\(if_debug\\|if_windows\\|if_linux\\|defer\\|proc\\|try\\|try_void\\|without_logging\\)\\>" . font-lock-keyword-face)))))
     (eval progn
           (defvar context-mode-map
             (make-sparse-keymap)
             "Keymap while context-mode is active.")
           (define-minor-mode context-mode "A temporary minor mode to be activated only specific to a buffer." nil :lighter " [f2]-Context" context-mode-map)
           (context-mode 1)
           (defhydra hydra-context
             (context-mode-map "<f2>")
             "Context Actions:"
             ("b" save-and-find-build-script-and-compile "build" :color blue)
             ("o" browse-file-directory "open" :color blue)
             ("q" nil "quit" :color blue))
           (define-key context-mode-map
             (kbd "<f2>")
             (quote hydra-context/body))
           (font-lock-add-keywords
            (quote c++-mode)
            (quote
             (("\\<\\(if_debug\\|if_windows\\|if_linux\\|defer\\|proc\\)\\>" . font-lock-keyword-face)))))
     (eval company-clang-set-prefix "slime.h")
     (eval progn
           (defvar context-mode-map
             (make-sparse-keymap)
             "Keymap while context-mode is active.")
           (define-minor-mode context-mode "A temporary minor mode to be activated only specific to a buffer." nil :lighter " [f2]-Context" context-mode-map)
           (context-mode 1)
           (defun save-and-find-test-script-and-compile nil
             (interactive)
             (let
                 ((build-script-name "test.bat"))
               (save-and-find-build-script-and-compile)))
           (defun save-and-find-run-script-and-compile nil
             (interactive)
             (let
                 ((build-script-name "run.bat"))
               (save-and-find-build-script-and-compile)))
           (defun save-and-find-debug-script-and-compile nil
             (interactive)
             (let
                 ((build-script-name "debug.bat"))
               (save-and-find-build-script-and-compile)))
           (defhydra hydra-context
             (context-mode-map "<f2>")
             "Context Actions:"
             ("b" save-and-find-build-script-and-compile "build" :color blue)
             ("r" save-and-find-run-script-and-compile "run" :color blue)
             ("d" save-and-find-debug-script-and-compile "debug" :color blue)
             ("t" save-and-find-test-script-and-compile "test" :color blue)
             ("o" browse-file-directory "open" :color blue)
             ("q" nil "quit" :color blue))
           (define-key context-mode-map
             (kbd "<f2>")
             (quote hydra-context/body))
           (font-lock-add-keywords
            (quote c++-mode)
            (quote
             (("\\<\\(if_debug\\|if_windows\\|if_linux\\|defer\\|proc\\)\\>" . font-lock-keyword-face)))))
     (eval progn
           (defvar context-mode-map
             (make-sparse-keymap)
             "Keymap while context-mode is active.")
           (define-minor-mode context-mode "A temporary minor mode to be activated only specific to a buffer." nil :lighter " [f2]-Context" context-mode-map)
           (context-mode 1)
           (defun save-and-find-test-script-and-compile nil
             (interactive)
             (let
                 ((build-script-name "test.bat"))
               (save-and-find-build-script-and-compile)))
           (defun save-and-find-run-script-and-compile nil
             (interactive)
             (let
                 ((build-script-name "run.bat"))
               (save-and-find-build-script-and-compile)))
           (defun save-and-find-debug-script-and-compile nil
             (interactive)
             (let
                 ((build-script-name "debug.bat"))
               (save-and-find-build-script-and-compile)))
           (defhydra hydra-context
             (context-mode-map "<f2>")
             "Context Actions:"
             ("b" save-and-find-build-script-and-compile "build" :color blue)
             ("r" save-and-find-run-script-and-compile "run" :color blue)
             ("d" save-and-find-debug-script-and-compile "debug" :color blue)
             ("t" save-and-find-test-script-and-compile "test" :color blue)
             ("o" browse-file-directory "open" :color blue)
             ("q" nil "quit" :color blue))
           (define-key context-mode-map
             (kbd "<f2>")
             (quote hydra-context/body))
           (font-lock-add-keywords
            (quote c++-mode)
            (quote
             (("\\<\\(if_debug\\|if_windows\\|if_linux\\)\\>" . font-lock-keyword-face)))))
     (font-lock-add-keywords
      (quote c++-mode)
      (quote
       (("\\<\\(if_debug\\|if_windows\\|if_linux\\)\\>" . font-lock-keyword-face))))
     (font-lock-add-keywords nil
                             (quote
                              (("\\<\\(if_debug\\|if_windows\\|if_linux\\)\\>" . font-lock-keyword-face))))
     (font-lock-add-keywords nil
                             (quote
                              (("\\<\\(FIXME\\):" 1 font-lock-warning-face prepend)
                               ("\\<\\(and\\|or\\|not\\)\\>" . font-lock-keyword-face))))
     (eval progn
           (defvar context-mode-map
             (make-sparse-keymap)
             "Keymap while context-mode is active.")
           (define-minor-mode context-mode "A temporary minor mode to be activated only specific to a buffer." nil :lighter " [f2]-Context" context-mode-map)
           (context-mode 1)
           (defun save-and-find-test-script-and-compile nil
             (interactive)
             (let
                 ((build-script-name "test.bat"))
               (save-and-find-build-script-and-compile)))
           (defun save-and-find-run-script-and-compile nil
             (interactive)
             (let
                 ((build-script-name "run.bat"))
               (save-and-find-build-script-and-compile)))
           (defun save-and-find-debug-script-and-compile nil
             (interactive)
             (let
                 ((build-script-name "debug.bat"))
               (save-and-find-build-script-and-compile)))
           (defhydra hydra-context
             (context-mode-map "<f2>")
             "Context Actions:"
             ("b" save-and-find-build-script-and-compile "build" :color blue)
             ("r" save-and-find-run-script-and-compile "run" :color blue)
             ("d" save-and-find-debug-script-and-compile "debug" :color blue)
             ("t" save-and-find-test-script-and-compile "test" :color blue)
             ("o" browse-file-directory "open" :color blue)
             ("q" nil "quit" :color blue))
           (define-key context-mode-map
             (kbd "<f2>")
             (quote hydra-context/body)))
     (eval company-clang-set-prefix "main.cpp")
     (eval progn
           (defvar context-mode-map
             (make-sparse-keymap)
             "Keymap while context-mode is active.")
           (define-minor-mode context-mode "A temporary minor mode to be activated only specific to a buffer." nil :lighter " Context" context-mode-map)
           (context-mode 1)
           (defun save-and-find-test-script-and-compile nil
             (interactive)
             (let
                 ((build-script-name "test.bat"))
               (save-and-find-build-script-and-compile)))
           (defun save-and-find-run-script-and-compile nil
             (interactive)
             (let
                 ((build-script-name "run.bat"))
               (save-and-find-build-script-and-compile)))
           (defun save-and-find-debug-script-and-compile nil
             (interactive)
             (let
                 ((build-script-name "debug.bat"))
               (save-and-find-build-script-and-compile)))
           (defhydra hydra-context
             (context-mode-map "<f2>")
             "Context Actions:"
             ("b" save-and-find-build-script-and-compile "build" :color blue)
             ("r" save-and-find-run-script-and-compile "run" :color blue)
             ("d" save-and-find-debug-script-and-compile "debug" :color blue)
             ("t" save-and-find-test-script-and-compile "test" :color blue)
             ("o" browse-file-directory "open" :color blue)
             ("q" nil "quit" :color blue))
           (define-key context-mode-map
             (kbd "<f2>")
             (quote hydra-context/body))))))
 '(send-mail-function (quote mailclient-send-it))
 '(show-paren-mode t)
 '(special-display-buffer-names (quote ("*shell - flutter run*")))
 '(tide-format-options (quote (indentSize 4)))
 '(tool-bar-mode nil)
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#dc322f")
     (40 . "#cb4b16")
     (60 . "#b58900")
     (80 . "#859900")
     (100 . "#2aa198")
     (120 . "#268bd2")
     (140 . "#d33682")
     (160 . "#6c71c4")
     (180 . "#dc322f")
     (200 . "#cb4b16")
     (220 . "#b58900")
     (240 . "#859900")
     (260 . "#2aa198")
     (280 . "#268bd2")
     (300 . "#d33682")
     (320 . "#6c71c4")
     (340 . "#dc322f")
     (360 . "#cb4b16"))))
 '(vc-annotate-very-old-color nil)
 '(web-mode-markup-indent-offset 2))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Noto Sans Mono" :foundry "outline" :slant normal :weight normal :height 113 :width normal))))
 '(company-preview ((t (:background "#657b83" :foreground "#eee8d5"))))
 '(company-scrollbar-fg ((t (:background "#002B36"))))
 '(company-tooltip-annotation-selection ((t (:inherit company-tooltip-selection :foreground "#859900"))))
 '(diff-hl-change ((t (:background "orange" :foreground "orange"))))
 '(diff-hl-delete ((t (:background "orange red" :foreground "orange red"))))
 '(diff-hl-insert ((t (:inherit diff-added :background "green" :foreground "green"))))
 '(markdown-code-face ((t nil)))
 '(minimap-active-region-background ((t (:background "#001E26"))))
 '(mode-line ((t (:background "#073642" :box nil :weight normal :height 1.0))))
 '(mode-line-buffer-id-inactive ((t (:inherit mode-line-buffer-id :box nil))))
 '(mode-line-inactive ((t (:inherit mode-line :background "#073642" :foreground "#586e75" :box nil :weight normal :height 1.0))))
 '(org-level-1 ((t (:inherit outline-1 :height 1.8))))
 '(org-level-2 ((t (:inherit outline-2 :height 1.5))))
 '(org-level-3 ((t (:inherit outline-3 :height 1.3))))
 '(org-meta-line ((t (:inherit mode-line-buffer-id))))
 '(powerline-active1 ((t (:background "#14282D" :foreground "#839496" :box nil))))
 '(powerline-active2 ((t (:background "#073642" :foreground "#839496" :box nil))))
 '(powerline-inactive1 ((t (:inherit mode-line-inactive :background "grey11" :box nil))))
 '(powerline-inactive2 ((t (:inherit mode-line-inactive :background "grey20" :box nil))))
 '(rainbow-delimiters-depth-1-face ((t (:foreground "dark orange"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "deep pink"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "chartreuse"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "deep sky blue"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "yellow"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "orchid"))))
 '(rainbow-delimiters-depth-7-face ((t (:foreground "spring green"))))
 '(rainbow-delimiters-depth-8-face ((t (:foreground "sienna1"))))
 '(region ((t (:background "#93a1a1" :foreground "SteelBlue4"))))
 '(treemacs-directory-collapsed-face ((t (:inherit default))))
 '(treemacs-directory-face ((t (:inherit default))))
 '(treemacs-git-added-face ((t (:inherit diff-hl-insert :background "#002B36"))))
 '(treemacs-git-ignored-face ((t (:inherit file-name-shadow))))
 '(treemacs-git-modified-face ((t (:inherit diff-hl-change :background "#002B36"))))
 '(treemacs-git-untracked-face ((t (:inherit diff-hl-insert :background "#002B36"))))
 '(treemacs-tags-face ((t (:inherit file-name-shadow))))
 '(window-divider ((t (:foreground "#14282D"))))
 '(window-divider-first-pixel ((t (:foreground "#14282D"))))
 '(window-divider-last-pixel ((t (:foreground "#14282D")))))


(setq lang :de)
(defun change-lang ()
  (interactive)
  ;; (keyboard-translate ?z ?y)
  (if (eq lang :de)
      (progn
        (keyboard-translate ?y ?z)  ; For german keyboards
        (keyboard-translate ?z ?y)
        (set-input-method 'korean-hangul)
        (setq lang :kr))
    (toggle-input-method nil)
    (keyboard-translate ?y ?y)  ; For german keyboards
    (keyboard-translate ?z ?z)
    (setq lang :de)))

(global-set-key (kbd "<f1>") 'change-lang)
;; (let ((fontset "fontset-default")) (set-fontset-font fontset 'hangul"gulim:pixelsize=18"))
(let ((fontset "fontset-default")) (set-fontset-font fontset 'hangul "noto sans mono cjk kr regular:pixelsize=40"))
(let ((fontset "fontset-default")) (set-fontset-font fontset 'han    "noto sans mono cjk tc regular:pixelsize=18"))


;;
;;
;;


;; (use-package hydra :ensure t)
;; (use-package lsp-mode :ensure t)
;; (use-package company-lsp :ensure t)
;; ;; (use-package lsp-ui :ensure t)
;; (use-package lsp-java :ensure t :after lsp)

;; ;; (add-hook 'java-mode-hook
;; ;;           (lambda ()
;; ;;             (lsp)
;; ;;             (lsp-lens-mode 1)))

;; (use-package dap-mode
;;   :ensure t
;;   :after lsp-mode
;;   :config
;;   (dap-mode t)
;;   (dap-ui-mode t))

;; (use-package dap-java :after (lsp-java))
;; (use-package lsp-java-treemacs :after (treemacs))


(add-to-list 'load-path "~/.emacs.d/config/3rd-party/")

(require 'slime-mode)

;; (require 'buffer-timer)
;; (setq buffer-timer-regexp-master-list
;;       '(
;;         ("idle" .
;;          (("generic" .                    "^\\*idle\\*")
;;           ("generic2" .                   "^\\*idle-2\\*")
;;           ("minibuf" .                        "^ \\*Minibuf-.*")))
;;         ("work" .
;;          (("Slime" .
;;            (("docs" . "slime/src/.*org")
;;             ("code" . "slime/src/.*\\(cpp\\|h\\)$")
;;         ))))))

(use-package ivy-posframe
  :ensure t
  :config
  (progn
    (setq ivy-display-function #'ivy-posframe-display-at-frame-center)
    (setq ivy-posframe-parameters
          '((left-fringe . 8)
            (right-fringe . 8)
            (top-fringe . 8)))
    (set-face-attribute 'internal-border nil :background "gray50")
    (setq ivy-posframe-border-width 1)
    (ivy-posframe-enable)))

(use-package hydra-posframe
  ;; :load-path "<path-to-the-hydra-posframe>"
  :config
  (progn
    (setq ivy-posframe-parameters
          '((left-fringe . 8)
            (right-fringe . 8)
            (top-fringe . 8)))
    (set-face-attribute 'internal-border nil :background "gray50")
    (setq ivy-posframe-border-width 1)
    (hydra-posframe-enable)))
