;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; term/func-keys.el for site-lisp path
;;; Copyright (c) 1996-2001 SuSE Gmbh Nuernberg, Germany.
;;;
;;; Author: Werner Fink  <werner@suse.de>, No warranty of any kind
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; num block
;; kp_f1 .. kp_f4 and kp_tab not found on MF-102
  (global-set-key [kp-f1]   esc-map) ; Escape
  (global-set-key [kp-f2]  'undo) ; Undo
  (global-set-key [kp-f3]  'isearch-forward) ; Search
  (global-set-key [kp-f4]  'kill-line) ; Kill-Line
;;
;; Backspace, Delete and any thing else
;;
(if (not window-system)
      ; Do nothing within terminals because they know about
      nil
  (if (fboundp 'normal-erase-is-backspace-mode)
     (normal-erase-is-backspace-mode 1)
    (global-set-key   [delete]      'delete-char))
 ;(global-set-key   [delete]      '[127])
 ;(global-unset-key [backspace])
 ;(global-set-key   [backspace]   '[127])
)
;;
;; Wheel mouse support
;;
(if (fboundp 'mouse-wheel-mode)
  (mouse-wheel-mode 1)
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Ende von func-keys.el
