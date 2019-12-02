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

(load-theme 'wheatgrass)

(set-face-attribute 'default nil
                    :family "Source Code Pro"
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

(require 'evil)
(evil-mode t)
