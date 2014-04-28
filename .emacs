(setq inhibit-startup-screen t)
(setq initial-scratch-message nil)

(setq make-backup-files nil)
; or (setq backup-inhibited 1)
(setq auto-save-default nil)

(show-paren-mode 1)

(setq ring-bell-function (lambda () nil))

(global-linum-mode 1)

(if window-system
  (tool-bar-mode -1))

(unless window-system
  (menu-bar-mode -1))

;(setq display-time-day-and-date t)
;(display-time)

(fset 'yes-or-no-p 'y-or-n-p)

; Ensure the last line of the file ends in a newline.
(setq require-final-newline t)

; Remove trailing whitespace.
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(font-lock-add-keywords 'c++-mode
		    '(("\\<\\(FIXME\\):" 1 font-lock-warning-face prepend)
		      ("\\<\\(TODO\\):" 1 font-lock-warning-face prepend)
		      ("\\<\\(BUG\\):" 1 font-lock-warning-face prepend)
		      ("\\<\\(NOTE\\):" 1 font-lock-warning-face prepend)
		      ("\\<\\(HACK\\):" 1 font-lock-warning-face t)))

(load-theme 'wombat)

; PuTTY fix. Ugly. Bad. But it works. (Good)
; Source: http://www.emacswiki.org/emacs/PuTTY#toc7
(unless window-system
  (define-key global-map [select] 'end-of-line))
