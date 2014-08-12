;; This is modified from SR Borrett's emacs customization file on HERA - 21 July 2011
;; AEOLUS                                                                            
;; ========LAST MODIFIED 14Jul2014========

;; NOTE use this to find help: C-h i m emacs RET

(setq load-path (append load-path (list "/usr/local/share")))

;;The path where you store your *.el files
(add-to-list 'load-path "~/.emacs.d") 
(let ((default-directory "~/.emacs.d/"))
  (normal-top-level-add-subdirs-to-load-path))

;;add stationary (and beamer) to load path
;;(setq load-path (append load-path (list "~/stationary")))
;;(setq load-path (append load-path (list "~/stationary/beamer/keynote")))


(if (< emacs-major-version 23)
(defun characterp (obj)
(and (char-or-string-p obj) (not (stringp obj)))))

;;revive.l
(load "revive")
(autoload 'save-current-configuration "revive" "Save status" t)
(autoload 'resume "revive" "Resume Emacs" t)
(autoload 'wipe "revive" "Wipe Emacs" t)
;;Keyboard shortcuts
(define-key ctl-x-map "S" 'save-current-configuration)
(define-key ctl-x-map "F" 'resume)
(define-key ctl-x-map "K" 'wipe)

;;binary clock
;;http://www.davep.org/emacs/binclock.el
(load "binclock")

;;git
(load "git.el")

;;alarm timer
(load "alarm.el")

;;top-mode.el
(setq load-path (append load-path (list "/usr/local/share/emacs")))
(load "top-mode.el")

;; ;;python-mode.el
;; (add-to-list 'load-path "/usr/local/share/emacs/python-mode") 
;; (setq py-install-directory "/usr/local/share/emacs/python-mode/python-mode.el")
;; (require 'python-mode.el)
;; ;;(setq py-load-pymacs-p t)
;; ;;(require 'auto-complete-config)
;; ;;(ac-config-default)

;; ;;calfw - ical like calendar
;; (require 'calfw)
;; ;; (unless (fboundp 'calendar-extract-day)
;; ;;   (defalias 'calendar-extract-day (symbol-function 'extract-calendar-day))
;; ;;   (defalias 'calendar-extract-month (symbol-function 'extract-calendar-month))
;; ;;   (defalias 'calendar-extract-year (symbol-function 'extract-calendar-year)))
;; ;; (require 'calfw-ical)
;; ;; (cfw:open-ical-calendar "http://www.google.com/calendar/dav/glomus@gmail.com/user/")


;; ;;w3m
;; (add-to-list 'exec-path "/opt/local/share/w3m")
;; (require 'w3m-load)
;; (setq w3m-use-tab t)
;; (setq w3m-use-cookies t)

;;Games
;; (setq load-path (append load-path (list "/usr/local/share/emacs/games")))
;; erobot
;;(load "erobot.el")
;; (load "gnugo.el")
;; (load "rpg-el.elc")
;; (load "mine-sweeper.el")
;; (load "scramble-string.el")
;; (require 'random-idle-quote)
;; (random-idle-quote)

;; Default enter winner mode
(winner-mode 1)

;; Disable ‘C-x C-c’

    (defun dont-kill-emacs ()
      (interactive)
      (error (substitute-command-keys "To exit emacs: \\[kill-emacs]")))
  
    (global-set-key "\C-x\C-c" 'dont-kill-emacs)
;;    (global-set-key "\C-z" 'shell)

;; Disable ‘C-[ C-[ C-[’

    (defun dont-escape-out ()
      (interactive)
      (error (substitute-command-keys "Escape out disabled. See ~/.emacs Disable 'C-[ C-[ C-['.")))
  
    (global-set-key "\C-[\C-[\C-[" 'dont-escape-out)


;; add date and time to status bar
(setq display-time-day-and-date t
                display-time-24hr-format t)
             (display-time)

;;Turn off bell
(setq ring-bell-function 'ignore)

;;Change error message from beep to visual
(setq ring-bell-function (lambda () (message "**********beep***********")))

;;optional keyboard short-cut
(global-set-key "\C-xm" 'browse-url-at-point)

;; Add local lisp folder to load-path                                              
(setq load-path (append load-path (list "~/elisp")))                               

;; flyspell ----                                                                   
(autoload 'flyspell-mode-on "flyspell" "On-the-fly ispell." t)

;;iCal Reading
(require 'org-mac-iCal)

;;; TEXT MODE and Auto Fill                                                        
(setq default-major-mode 'text-mode)
(add-hook 'text-mode-hook 'text-mode-hook-identify)
(add-hook 'text-mode-hook 'turn-on-auto-fill)
(setq colon-double-space t)
;(add-hook 'text-mode-hook 'flyspell-mode)

;; LATEX MODIFICATIONS                                                             
(add-hook 'LaTeX-mode-hook 'turn-on-auto-fill)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)

;; Shell Mode                                                                      
(setq ansi-color-names-vector ; better contrast colors                             
      ["black" "red4" "green4" "yellow4"
       "blue3" "magenta4" "cyan4" "white"])
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)
;; ====================                                                            

;; turn on paraenthesis highlighting                                               
(require 'paren)
(show-paren-mode 1)

;;; ESS                                                                            
;; (require 'ess-site)
(load "/Developer/usr/share/emacs/site-lisp/ess-5.13/lisp/ess-site")
 (require 'noweb-font-lock-mode)

;;autocomplete
(add-to-list 'load-path "~/.emacs.d")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)
(setq ess-use-auto-complete t)


;; ; =============================================                                    


;; ;;; Matlab-mode setup:                                                             
;; ;; Set up matlab-mode to load on .m files                                          
;;   ;; Replace path below to be where your matlab.el file is.
;;   (add-to-list 'load-path "~/elisp/matlab/")
;;   (load-library "matlab-load")

;;   ;; Enable CEDET feature support for MATLAB code. (Optional)
;;   ;; (matlab-cedet-setup)


;; ;;(autoload 'matlab-mode "matlab" "Enter MATLAB mode." t)
;; ;;(setq auto-mode-alist (cons '("\\.m\\'" . matlab-mode) auto-mode-alist))
;; ;;(autoload 'matlab-shell "matlab" "Interactive MATLAB mode." t)

;; ;; Customization:                                                                  
;; ;;(setq matlab-indent-function t) ; if you want function bodies indented             
;; ;;(setq matlab-verify-on-save-flag nil) ; turn off auto-verify on save               
;; ;;(defun my-matlab-mode-hook ()
;; ;;  (setq fill-column 76))                ; where auto-fill should wrap              
;; ;;(add-hook 'matlab-mode-hook 'my-matlab-mode-hook)
;; ;;(defun my-matlab-shell-mode-hook ()
;; ;;  '())
;; ;;(add-hook 'matlab-shell-mode-hook 'my-matlab-shell-mode-hook)

                                                                                   
;; ;; Turn off Matlab desktop                                                         
;; ;; (setq matlab-shell-command-switches '("-nojvm"))                                
                                                                                   
; ================================================================                 
;;; Other settings:                                                                
                                                                                   
;; White background color                                                          
; (set-background-color "white")                                                   
                                                                                   
;; Syntax highlighting:
(global-font-lock-mode t)                                
(transient-mark-mode t)

;; Word Count
(defun latex-word-count ()
  (interactive)
  (shell-command (concat "/usr/local/bin/texcount.pl "
					; "uncomment then options go here "
                         (buffer-file-name))))

(defun word-count nil "Count words in buffer" (interactive)
  (shell-command-on-region (point-min) (point-max) "wc -w"))


;;olde customization file
;; (load "~/elisp/ess-5.3.6/lisp/ess-site")

;; (setq default-major-mode 'text-mode)
;; (add-hook 'text-mode-hook 'turn-on-auto-fill)


(put 'downcase-region 'disabled nil)

(put 'scroll-left 'disabled nil)

(put 'upcase-region 'disabled nil)

;;Cscharp.el
(autoload 'csharp-mode "csharp-mode" "Major mode for editing C# code." t)
(setq auto-mode-alist
      (append '(("\\.cs$" . csharp-mode)) auto-mode-alist))

;;Markdown mode
(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.Rmd\\'" . rmd-mode))
(add-to-list 'auto-mode-alist '("\\.rmd\\'" . rmd-mode))

;;gpg support
;; (setq epg-gpg-program "/opt/local/bin/gpg")
;; (require 'epa)
;; (require 'epa-file)
;; (epa-file-enable)
;; (epa-file-name-regexp-update)

;;polymode
;; R-markdown
(defun rmd-mode ()
  "ESS Markdown mode for rmd files"
  (interactive)
  (setq load-path
	(append '("~/.emacs.d"  "~/.emacs.d/polymode/modes")
		load-path))
  
  (require 'poly-R)
  (require 'poly-markdown)     
  (poly-markdown+r-mode))
