(setq inhibit-startup-screen t)

(set-default frame-title-format '("Emacs"))

(set-default 'cursor-type
	     'hbar)

(menu-bar-mode -1)

(tool-bar-mode -1)

(scroll-bar-mode -1)

(set-face-attribute 'default nil
		    :family "Hack"
		    :height 130
		    :weight 'normal
		    :width 'normal)

(column-number-mode 1)

(show-paren-mode 1)

(electric-pair-mode 1)

(global-hl-line-mode 1)

(global-display-line-numbers-mode 1)

(fringe-mode 0)

(toggle-frame-maximized)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(column-number-mode t)
 '(custom-enabled-themes (quote (manoj-dark)))
 '(display-line-numbers-type (quote relative))
 '(package-selected-packages (quote (gruvbox-theme dracula-theme evil))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'evil)
(evil-mode 1)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(require 'gruvbox)
(load-theme 'gruvbox-dark-hard t)
