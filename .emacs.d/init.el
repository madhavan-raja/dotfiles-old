(setq frame-title-format "%b - Emacs")

(toggle-frame-maximized)

(set-default 'cursor-type
	     'bar)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(column-number-mode)

(show-paren-mode)

(electric-pair-mode)

(global-hl-line-mode t)
(set-face-background 'hl-line "#222222")

(ido-mode t)

(set-face-attribute 'default nil
                    :family "Cascadia Code PL"
                    :height 150
                    :weight 'normal
                    :width 'normal)

(fringe-mode 0)

(global-display-line-numbers-mode)

(require 'package)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))
(setq package-enable-at-startup nil)
(package-initialize)

(add-to-list 'custom-theme-load-path "~/.emacs.d")

(require 'gruvbox)
(load-theme 'gruvbox-dark-hard t)

(require 'evil)
(evil-mode t)

(require 'org-bullets)
(add-hook 'org-mode-hook 'org-bullets-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("b89ae2d35d2e18e4286c8be8aaecb41022c1a306070f64a66fd114310ade88aa" "7f6d4aebcc44c264a64e714c3d9d1e903284305fd7e319e7cb73345a9994f5ef" default)))
 '(inhibit-startup-screen t)
 '(package-selected-packages (quote (nord-theme gruvbox-theme org-bullets evil))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
