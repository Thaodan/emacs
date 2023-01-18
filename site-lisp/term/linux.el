;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; term/linux.el for site-lisp path
;;; Copyright (c) 1996 SuSE Gmbh Nuernberg, Germany.  All rights reserved.
;;;
;;; Author: Werner Fink  <werner@suse.de>, No warranty of any kind
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  (define-key function-key-map "\e[1~" [home])
  (define-key function-key-map "\e[2~" [insertchar])
  (define-key function-key-map "\e[3~" [deletechar])
  (define-key function-key-map "\e[4~" [end])
  (define-key function-key-map "\e[5~" [prior])
  (define-key function-key-map "\e[6~" [next])
  (define-key function-key-map "\e[[A" [f1])
  (define-key function-key-map "\e[[B" [f2])
  (define-key function-key-map "\e[[C" [f3])
  (define-key function-key-map "\e[[D" [f4])
  (define-key function-key-map "\e[[E" [f5])
  (define-key function-key-map "\e[17~" [f6])
  (define-key function-key-map "\e[18~" [f7])
  (define-key function-key-map "\e[19~" [f8])
  (define-key function-key-map "\e[20~" [f9])
  (define-key function-key-map "\e[21~" [f10])
  (define-key function-key-map "\e[23~" [f11])
  (define-key function-key-map "\e[24~" [f12])
  (define-key function-key-map "\e[25~" [f13])
  (define-key function-key-map "\e[26~" [f14])
  (define-key function-key-map "\e[28~" [help])
  (define-key function-key-map "\e[29~" [menu])
  (define-key function-key-map "\e?\e[28~" [M-help])
  (define-key function-key-map "\e?\e[29~" [M-menu])
  (define-key function-key-map "\e[31~" [f17])
  (define-key function-key-map "\e[32~" [f18])
  (define-key function-key-map "\e[33~" [f19])
  (define-key function-key-map "\e[34~" [f20])
;;
;; Not in Use?
;; ----------------------------------
;; Console-Setting for Linux ???
  (define-key function-key-map "\e[H"  [M-up])
  (define-key function-key-map "\e[Y"  [M-down])
  (define-key function-key-map "\e[M"  [menu])
  (define-key function-key-map "\e?\e[M"  [M-menu])
  (define-key function-key-map "\e[P"  [pause])
;;
;; num block
  (define-key function-key-map "\e[G" [begin])
;;
;; Locked num block Nothing to do :-)
;;
;; Undefine some ESC ESC behavior --- for later use
  (global-unset-key "\e\e")
  (define-key esc-map "\e" nil)
;;
  (define-key function-key-map "\e[D" [left])
  (define-key function-key-map "\e[C" [right])
  (define-key function-key-map "\e[A" [up])
  (define-key function-key-map "\e[B" [down])
;;
  (define-key function-key-map "\e\e[D" [M-left])
  (define-key function-key-map "\e\e[C" [M-right])
  (define-key function-key-map "\e\e[A" [M-up])
  (define-key function-key-map "\e\e[B" [M-down])
;;
;; Not in Use?
  (define-key function-key-map "\C-?\e[D" [C-left])
  (define-key function-key-map "\C-?\e[C" [C-right])
  (define-key function-key-map "\C-?\e[A" [C-up])
  (define-key function-key-map "\C-?\e[B" [C-down])
;;
;; Backspace, Delete and any thing else
;;
  (global-unset-key [insertchar])
  (global-set-key   [insertchar]  'overwrite-mode)
  (global-unset-key [deletechar])
  (global-set-key   [deletechar]  'delete-char)
;;
(load "term/func-keys" nil t)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Ende von linux.el
