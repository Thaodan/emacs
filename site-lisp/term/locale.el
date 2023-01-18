;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; term/locale.el for site-lisp path
;;; Copyright (c) 1996-2003 SuSE Linux AG Nuernberg, Germany.
;;; Copyright (c) 2007 SuSE LINUX Products GmbH Nuernberg, Germany.
;;;
;;; Author: Werner Fink  <werner@suse.de>, No warranty of any kind
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-hook 'term-setup-hook (function (lambda ()
				       (load "term/func-keys" t t))))
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Ende von locale.el
