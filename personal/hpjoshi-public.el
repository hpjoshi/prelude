;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; The personal emacs configuration file for hpjoshi.
;; Note that this configuration is PUBLIC.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;; Use ssh instead of scp for tramp by default
(setq tramp-default-method "ssh")

;; prelude - turn off whitspace fixing on save
;; without this line, prelude will clean up whitespace in the entire file
;; when it is saved, resulting in a large number of whitespace only changes
(setq prelude-clean-whitespace-on-save nil)

;; turn-off whitespace error highlighting by default
(setq prelude-whitespace nil)

;; set tango-dark as the theme
;(setq prelude-theme 'tango)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; The following was needed to get proper emacs dark mode before          ;;
;; starting to use emacs-mac from railwaycat.                             ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (defun set-system-dark-mode ()
;;   (interactive)
;;   (if (string= (shell-command-to-string "printf %s \"$( osascript -e \'tell application \"System Events\" to tell appearance preferences to return dark mode\' )\"") "true")
;;       (load-theme 'tango-dark t)
;;     (load-theme 'tango t)
;;     )
;;   )
;; (set-system-dark-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ediff                                                                  ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'ediff)
;; don't start another frame
;; this is done by default in preluse
(setq ediff-window-setup-function 'ediff-setup-windows-plain)
;; put windows side by side
(setq ediff-split-window-function (quote split-window-horizontally))
;;revert windows on exit - needs winner mode
(winner-mode)
(add-hook 'ediff-after-quit-hook-internal 'winner-undo)
