;; Make selection highlight as purple
(set-face-attribute 'helm-selection nil
                    :background "purple"
                    :foreground "black")

;; For navigating around
(global-set-key (kbd "M-N") (lambda () (interactive) (next-line 8)))
(global-set-key (kbd "M-P") (lambda () (interactive) (previous-line 8)))
(global-set-key (kbd "M-*") (lambda () (interactive) (forward-char 40)))
(global-set-key (kbd "M-&") (lambda () (interactive) (backward-char 40)))

;; Enable caching to make C-c f faster
(setq projectile-enable-caching t)

;; For modern-c++-mode
(require 'modern-cpp-font-lock)
(modern-c++-font-lock-global-mode t)
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.cc\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.icc\\'" . c++-mode))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(company-quickhelp-color-background "#4F4F4F")
 '(company-quickhelp-color-foreground "#DCDCCC")
 '(custom-enabled-themes (quote (wombat)))
 '(custom-safe-themes
   (quote
    ("3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "190a9882bef28d7e944aa610aa68fe1ee34ecea6127239178c7ac848754992df" default)))
 '(fci-rule-color "#383838")
 '(nrepl-message-colors
   (quote
    ("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
 '(package-selected-packages
   (quote
    (ws-butler auto-complete-exuberant-ctags use-package rg ag dumb-jump matlab-mode modern-cpp-font-lock zop-to-char zenburn-theme which-key volatile-highlights undo-tree switch-window smex smartrep smartparens smart-mode-line rainbow-mode rainbow-delimiters operate-on-number move-text magit key-chord json-mode js2-mode imenu-anywhere ido-completing-read+ hl-todo helm-descbinds helm-ag guru-mode grizzl god-mode gitignore-mode gitconfig-mode git-timemachine gist geiser geben-helm-projectile flycheck flx-ido f expand-region elisp-slime-nav editorconfig easy-kill discover-my-major diminish diff-hl crux counsel-projectile company browse-kill-ring beacon anzu ace-window)))
 '(pdf-view-midnight-colors (quote ("#DCDCCC" . "#383838")))
 '(smartparens-global-mode nil)
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-color-map
   (quote
    ((20 . "#BC8383")
     (40 . "#CC9393")
     (60 . "#DFAF8F")
     (80 . "#D0BF8F")
     (100 . "#E0CF9F")
     (120 . "#F0DFAF")
     (140 . "#5F7F5F")
     (160 . "#7F9F7F")
     (180 . "#8FB28F")
     (200 . "#9FC59F")
     (220 . "#AFD8AF")
     (240 . "#BFEBBF")
     (260 . "#93E0E3")
     (280 . "#6CA0A3")
     (300 . "#7CB8BB")
     (320 . "#8CD0D3")
     (340 . "#94BFF3")
     (360 . "#DC8CC3"))))
 '(vc-annotate-very-old-color "#DC8CC3"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; For certain config files use ruby-mode
(add-to-list 'auto-mode-alist '("\\.alg\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.algseq\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.algtest\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.telem_proc\\'" . ruby-mode))

;; To get color in output of shell commands
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)
(add-to-list 'comint-output-filter-functions 'ansi-color-process-output)

;; dumb-jump bindings
(use-package dumb-jump
             :bind (("M-g o" . dumb-jump-go-other-window)
                    ("M-g j" . dumb-jump-go)
                    ("M-g i" . dumb-jump-go-prompt)
                    ("M-g x" . dumb-jump-go-prefer-external)
                    ("M-g z" . dumb-jump-go-prefer-external-other-window))
             :config (setq dumb-jump-selector 'ivy) ;; (setq dumb-jump-selector 'helm)
             :ensure)

;; enable line numbers everywhere
(global-linum-mode t)

;; change switch buffer to use ido so as not to display all that info
;; actually don't like this...
;; (ido-mode 1)
;; (setq ido-separator "\n")
;; (global-set-key (kbd "C-x b") 'ido-switch-buffer)

;; So that we don't have to worry about opening the large TAGS file in sims
(setq large-file-warning-threshold nil)

;; Enable the dir-locals file to load the compile command
(make-variable-buffer-local 'compile-command)

;; Disable smartparens mode
(add-hook 'prelude-prog-mode-hook (lambda () (smartparens-mode -1)) t)
