;; Make selection highlight as purple
;; (set-face-attribute 'helm-selection nil
;;                     :background "purple"
;;                     :foreground "black")

;; Sometimes projectile has ^C^P instead of ^C P
(define-key projectile-mode-map projectile-keymap-prefix nil)
(define-key projectile-mode-map (kbd "C-c p") #'projectile-command-map)

;; For some reason helm wasn't enabled so I'm enabling it explicitly
(global-set-key (kbd "M-x") #'helm-M-x)
(global-set-key (kbd "C-x r b") #'helm-filtered-bookmarks)
(global-set-key (kbd "C-x C-f") #'helm-find-files)
(helm-mode 1)

;; For mac emacs standalone
;; Disable this when using an ergonomic windows keyboard
;; (setq mac-option-modifier 'super)
(setq mac-command-modifier 'meta)

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
 '(package-selected-packages
   (quote
    (helm yaml-mode dockerfile-mode counsel-projectile rust-mode modern-cpp-font-lock zop-to-char zenburn-theme which-key volatile-highlights undo-tree smartrep smartparens rainbow-mode rainbow-delimiters projectile operate-on-number move-text magit json-mode js2-mode imenu-anywhere hl-todo guru-mode gitignore-mode gitconfig-mode git-timemachine gist geiser flycheck expand-region exec-path-from-shell elisp-slime-nav editorconfig easy-kill discover-my-major diminish diff-hl crux counsel company browse-kill-ring beacon anzu ace-window)))
 )
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(hl-line ((t (:background "#383838" :height 120 :width normal)))))

;; For certain config files use ruby-mode
(add-to-list 'auto-mode-alist '("\\.alg\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.algseq\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.algtest\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.telem_proc\\'" . ruby-mode))

;; To get color in output of shell commands
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)
(add-to-list 'comint-output-filter-functions 'ansi-color-process-output)

;; dumb-jump bindings
;; (use-package dumb-jump
;;              :bind (("M-g o" . dumb-jump-go-other-window)
;;                     ("M-g j" . dumb-jump-go)
;;                     ("M-g i" . dumb-jump-go-prompt)
;;                     ("M-g x" . dumb-jump-go-prefer-external)
;;                     ("M-g z" . dumb-jump-go-prefer-external-other-window))
;;              :config (setq dumb-jump-selector 'ivy) ;; (setq dumb-jump-selector 'helm)
;;              :ensure)

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
