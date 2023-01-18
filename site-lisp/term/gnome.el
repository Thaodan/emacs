;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; term/gnomw.el for site-lisp path
;;; Copyright (c) 2000 SuSE Gmbh Nuernberg, Germany.  All rights reserved.
;;;
;;; Author: Werner Fink  <werner@suse.de>, No warranty of any kind
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; (define-key function-key-map "\e[1~" [find])
; (define-key function-key-map "\eOH"  [home])
  (define-key function-key-map "\e[1~" [home])
  (define-key function-key-map "\e[2~" [insertchar])
  (define-key function-key-map "\e[3~" [deletechar])
; (define-key function-key-map "\e[4~" [select])
; (define-key function-key-map "\eOF"  [end])
  (define-key function-key-map "\e[4~" [end])
  (define-key function-key-map "\e[5~" [prior])
  (define-key function-key-map "\e[6~" [next])
  (define-key function-key-map "\e[OP" [f1])
  (define-key function-key-map "\e[OQ" [f2])
  (define-key function-key-map "\e[OR" [f3])
  (define-key function-key-map "\e[OS" [f4])
  (define-key function-key-map "\e[15~" [f5])
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
;; num block
;; [home] and [end] found in num block
; (define-key function-key-map "\eOH" [home])
; (define-key function-key-map "\eOF" [end])
  (define-key function-key-map "\e[1~" [home])
  (define-key function-key-map "\e[4~" [end])
;;
;; Locked num block
  (define-key function-key-map "\eOI" [kp-tab])
  (define-key function-key-map "\eOj" [kp-multiply])
  (define-key function-key-map "\eOk" [kp-add])
  (define-key function-key-map "\eOl" [kp-separator])
  (define-key function-key-map "\eOM" [kp-enter])
  (define-key function-key-map "\eOm" [kp-subtract])
  (define-key function-key-map "\eOn" [kp-decimal])
; (define-key function-key-map "\eOn" [kp-period]) ; [kp-decimal]
  (define-key function-key-map "\eOo" [kp-divide])
  (define-key function-key-map "\eOp" [kp-0])
  (define-key function-key-map "\eOq" [kp-1])
  (define-key function-key-map "\eOr" [kp-2])
  (define-key function-key-map "\eOs" [kp-3])
  (define-key function-key-map "\eOt" [kp-4])
  (define-key function-key-map "\eOu" [kp-5])
  (define-key function-key-map "\eOv" [kp-6])
  (define-key function-key-map "\eOw" [kp-7])
  (define-key function-key-map "\eOx" [kp-8])
  (define-key function-key-map "\eOy" [kp-9])
;;
;; Undefine some ESC ESC behavior --- for later use
  (global-unset-key "\e\e")
  (define-key esc-map "\e" nil)
;;
  (define-key function-key-map  "\eOD" [left])
  (define-key function-key-map  "\eOC" [right])
  (define-key function-key-map  "\eOA" [up])
  (define-key function-key-map  "\eOB" [down])
;;
  (define-key function-key-map  "\e\eOD" [M-left])
  (define-key function-key-map  "\e\eOC" [M-right])
  (define-key function-key-map  "\e\eOA" [M-up])
  (define-key function-key-map  "\e\eOB" [M-down])
;;
;; Not in Use?
  (define-key function-key-map "\C-?\eOD" [C-left])
  (define-key function-key-map "\C-?\eOC" [C-right])
  (define-key function-key-map "\C-?\eOA" [C-up])
  (define-key function-key-map "\C-?\eOB" [C-down])
;;
;; Backspace, Delete and any thing else
;;
  (global-unset-key [insertchar])
  (global-set-key   [insertchar]  'overwrite-mode)
  (global-unset-key [deletechar])
  (global-set-key   [deletechar]  'delete-char)
;;
(load "term/func-keys"  nil t)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Ende von gnomw.el
