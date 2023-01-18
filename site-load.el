;;;;
;;; emacs-27.1/lisp/site-load.el
;;; Copyright (c) 1995,96,98,99 SuSE Gmbh Nuernberg, Germany.  All rights reserved.
;;;
;;; Autor: Werner Fink  <werner@suse.de>, No warranty of any kind
;;;;
;; CONFIGURATION (under bash):
;; (export CC=gcc; \
;;  export CFLAGS="-O2 $(arch dependent flags) -pipe \
;;          -DSYSTEM_PURESIZE_EXTRA=25000 -DSITELOAD_PURESIZE_EXTRA=10000" ; \
;;  ./configure $(arch)-suse-linux --with-x --with-x-toolkit=lucid \
;;              --with-gcc --with-pop --with-system-malloc --prefix=/usr \
;;		--exec-prefix=/usr \
;;              --x-includes=/usr/X11R6/include --x-libraries=/usr/X11R6/lib )
;;
;; include bug fixes you have
;;
;; MAKE:
;;   make LDFLAGS=-s CC=gcc CFLAGS="-O2 $(arch dependent flags) -pipe \
;;    -DSYSTEM_PURESIZE_EXTRA=25000 -DSITELOAD_PURESIZE_EXTRA=10000"
;;
;; DOC:
;;   lisp/delsel.elc lisp/lpr.elc added to src/Makefile.in for DOCumentation
;;
;;;;
(garbage-collect)

(load "emacs-lisp/pcase")
(load "emacs-lisp/easy-mmode")
(garbage-collect)

(load "lpr")
(setq lpr-headers-switches (list "-h"))
(setq lpr-add-switches t)
(garbage-collect)

;; Overwrite `load delsel'
;; Choose `t' in your ~/.emacs
(custom-set-variables '(delete-selection-mode nil))
(garbage-collect)

(setq gnus-default-nntp-server "news")
(garbage-collect)

;;; site-load.el ends here
;;;;
;;; emacs-27.1/lisp/site-load.el
;;; Copyright (c) 1995,96,98,99 SuSE Gmbh Nuernberg, Germany.  All rights reserved.
;;;
;;; Autor: Werner Fink  <werner@suse.de>, No warranty of any kind
;;;;
;; CONFIGURATION (under bash):
;; (export CC=gcc; \
;;  export CFLAGS="-O2 $(arch dependent flags) -pipe \
;;          -DSYSTEM_PURESIZE_EXTRA=25000 -DSITELOAD_PURESIZE_EXTRA=10000" ; \
;;  ./configure $(arch)-suse-linux --with-x --with-x-toolkit=lucid \
;;              --with-gcc --with-pop --with-system-malloc --prefix=/usr \
;;		--exec-prefix=/usr \
;;              --x-includes=/usr/X11R6/include --x-libraries=/usr/X11R6/lib )
;;
;; include bug fixes you have
;;
;; MAKE:
;;   make LDFLAGS=-s CC=gcc CFLAGS="-O2 $(arch dependent flags) -pipe \
;;    -DSYSTEM_PURESIZE_EXTRA=25000 -DSITELOAD_PURESIZE_EXTRA=10000"
;;
;; DOC:
;;   lisp/delsel.elc lisp/lpr.elc added to src/Makefile.in for DOCumentation
;;
;;;;
(garbage-collect)

(load "emacs-lisp/pcase")
(load "emacs-lisp/easy-mmode")
(garbage-collect)

(load "lpr")
(setq lpr-headers-switches (list "-h"))
(setq lpr-add-switches t)
(garbage-collect)

;; Overwrite `load delsel'
;; Choose `t' in your ~/.emacs
(custom-set-variables '(delete-selection-mode nil))
(garbage-collect)

(setq gnus-default-nntp-server "news")
(garbage-collect)

;;; site-load.el ends here
