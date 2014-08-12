;Add ~/.emacs.d to loadpath
(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'load-path "/opt/local/share/emacs/site-lisp")
(add-to-list 'load-path "/opt/local/share/emacs/site-lisp/w3m")

;; Matlab
(autoload 'matlab-mode "matlab" "Enter MATLAB mode." t)
(setq auto-mode-alist (cons '("\\.m\\'" . matlab-mode) auto-mode-alist))
(autoload 'matlab-shell "matlab" "Interactive MATLAB mode." t)

(require 'w3m-load)

(load "auctex.el" nil t t)
;; Preview ei jostain syystö toimi
;(load "preview-latex.el" nil t t)

; ESS
(load "~/.emacs.d/ess-5.11/lisp/ess-site")


;; Evernote mode
(setq evernote-enml-formatter-command '("/opt/local/bin/w3m" "-dump" "-I" "UTF8" "-O" "UTF8"))
(require 'evernote-mode)

;; Color theme on window manager
(require 'color-theme)
(color-theme-initialize)
(setq color-theme-is-global t)

;; Choose different theme for Cocoa/X11 and Terminal
(if (window-system)     
;;    (color-theme-blue-sea)                            
      (color-theme-ld-dark)
      (color-theme-blue-sea)
   ;(color-theme-emacs-nw)
)

;; (set-cursor-color "red")
(add-hook 'clojure-mode-hook (lambda () (paredit-mode +1)))


;; Some custom options
(iswitchb-mode 1)
(show-paren-mode 1)

;; Enable paredit in clojure mode


;; Autopair http://code.google.com/p/autopair/
;(require 'autopair)
;   (autopair-global-mode)

;; Keyboard shortcuts
(global-set-key "\M-c" 'clipboard-kill-ring-save)
(global-set-key (kbd "M-/") 'hippie-expand)


; rst-mode
(require 'rst)
(autoload 'rst-mode "rst-mode" "mode for editing reStructuredText documents" t)
(setq auto-mode-alist
      (append '(("\\.rst$" . rst-mode)
                ("\\.rest$" . rst-mode)) auto-mode-alist))
 

;Pnw-mode for Pweave reST and Sphinx documents
(defun Pnw-mode ()
  (require 'noweb-font-lock-mode)
  (noweb-mode)
  (setq noweb-default-code-mode 'python-mode)
  (setq noweb-doc-mode 'rst-mode))

(setq auto-mode-alist (append (list (cons "\\.Pnw$" 'Pnw-mode))
                      auto-mode-alist))

;Plw-mode for Pweave Latex documents
(defun Plw-mode ()
  (require 'noweb-font-lock-mode)
  (noweb-mode)
  (setq noweb-default-code-mode 'python-mode)
  (setq noweb-doc-mode 'latex-mode))

(setq auto-mode-alist (append (list (cons "\\.Plw$" 'Plw-mode))
                      auto-mode-alist))


;Cnw-mode for noweb reST + Clojure documents
(defun Cnw-mode ()
  (require 'noweb-font-lock-mode)
  (noweb-mode)
  (setq noweb-default-code-mode 'clojure-mode)
  (setq noweb-doc-mode 'rst-mode))

(setq auto-mode-alist (append (list (cons "\\.Cnw$" 'Cnw-mode))
                      auto-mode-alist))


;Clw-mode for noweb reST + Clojure documents
(defun Clw-mode ()
  (require 'noweb-font-lock-mode)
  (noweb-mode)
  (setq noweb-default-code-mode 'clojure-mode)
  (setq noweb-doc-mode 'latex-mode))

(setq auto-mode-alist (append (list (cons "\\.Clw$" 'Clw-mode))
                      auto-mode-alist))




;Python-mode
(autoload 'python-mode "python-mode" "Python Mode." t)
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
(add-to-list 'interpreter-mode-alist '("python" . python-mode))

;iPython http://ipython.scipy.org/moin/Cookbook/IPythonEmacs23
;(require 'ipython)
;(setq py-python-command-args '("-pylab"))
;(setq ipython-completion-command-string "print(';'.join(__IP.Completer.all_completions('%s')))\n")

(defadvice py-execute-buffer (around python-keep-focus activate)
  "return focus to python code buffer"
  (save-excursion ad-do-it))

;From http://xahlee.org/emacs/emacs23_features.html
(global-visual-line-mode 1) ;Visual line mode 1 for on, 0 for off.
;(global-linum-mode 1) ; always show line numbers


;Special keys
; kill buffer
(global-set-key (kbd "<f5>") 'my-kill)
(defun my-kill ()
  "Kill buffer, taking gnuclient into account."
  (interactive)
  (if (buffer-modified-p)
      (error "Buffer has unsaved changes"))
      (kill-buffer (current-buffer)))


;Emacs starter kits init.el, using it for Clojure
;http://github.com/technomancy/emacs-starter-kit/
;; Turn off mouse interface early in startup to avoid momentary display
;; You really don't need these; trust me.
;(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
                                        ;(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
;(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; Load path etc.

(setq dotfiles-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))

;; Load up ELPA, the package manager

(add-to-list 'load-path dotfiles-dir)

(add-to-list 'load-path (concat dotfiles-dir "/elpa-to-submit"))

(setq autoload-file (concat dotfiles-dir "loaddefs.el"))
(setq package-user-dir (concat dotfiles-dir "elpa"))
(setq custom-file (concat dotfiles-dir "custom.el"))

(require 'package)
(package-initialize)
(require 'starter-kit-elpa)

;; These should be loaded on startup rather than autoloaded on demand
;; since they are likely to be used in every session

(require 'cl)
(require 'saveplace)
(require 'ffap)
(require 'uniquify)
(require 'ansi-color)
(require 'recentf)

;; backport some functionality to Emacs 22 if needed
(require 'dominating-file)

;; Load up starter kit customizations

;(require 'starter-kit-defuns)
;(require 'starter-kit-bindings)
;(require 'starter-kit-misc)
;(require 'starter-kit-registers)
;(require 'starter-kit-eshell)
;(require 'starter-kit-lisp)
;(require 'starter-kit-perl)
;(require 'starter-kit-ruby)
;(require 'starter-kit-js)

;(regen-autoloads)
(load custom-file 'noerror)

;; You can keep system- or user-specific customizations here
(setq system-specific-config (concat dotfiles-dir system-name ".el")
      user-specific-config (concat dotfiles-dir user-login-name ".el")
      user-specific-dir (concat dotfiles-dir user-login-name))
(add-to-list 'load-path user-specific-dir)

(if (file-exists-p system-specific-config) (load system-specific-config))
(if (file-exists-p user-specific-config) (load user-specific-config))
(if (file-exists-p user-specific-dir)
  (mapc #'load (directory-files user-specific-dir nil ".*el$")))

;;; starter kit init.el ends here




;Some settings to make Cocoa Emacs work as I want etc.


(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(ns-alternate-modifier (quote none))
 '(ns-command-modifier (quote meta))
 '(ns-function-modifier (quote meta))
 '(ns-pop-up-frames nil))