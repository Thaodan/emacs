# -*- autoconf -*-
dnl Taken from GNU Emacs's acinclude.m4
dnl

AC_ARG_VAR([QT_MAJOR_VERSION], [Qt major version to build against, defaults to Qt 6])
if test "x$ac_cv_env_QT_MAJOR_VERSION_set" != "xset"; then
	QT_MAJOR_VERSION=6
fi

dnl _QT_TOOL_VARIABLE([VARIABLE], [CONFIG-VARIABLE])
dnl -----------------------------
dnl Internal wrapper to query via the first available Qt tool.
dnl
AC_DEFUN([_QT_TOOL_VARIABLE],
[
        case "$QT_MAJOR_VERSION" in
        5)
        AC_CHECK_PROGS([QMAKE5], [qmake], [nil])
        AS_VAR_IF([QMAKE5], [nil]
                            AC_MSG_ERROR([No tools to detect paths for Qt $QT_MAJOR_VERSION found]),
        [[$1]=`$QMAKE5 -query [$2]`])
        ;;
        6)
        AC_CHECK_PROGS([QMAKE6], [qmake6 qmake-qt6], [nil])
        AS_VAR_IF(QMAKE6, [nil],
                            [AC_CHECK_PROGS([QTPATHS6], [qtpaths6 qtpaths-qt6], [nil])
                             AS_VAR_IF(QPATHS6, [nil],
                                                 AC_MSG_ERROR([No tools to detect paths for Qt $QT_MAJOR_VERSION found]),
                                                 [[$1]=`$QTPATHS6 --query [$2]`])],
        [[$1]=`$QMAKE6 -query [$2] 2>/dev/null`])
        ;;
        *) AC_MSG_ERROR([Unknown Qt $QT_MAJOR_VERSION]) ;;
        esac
])

dnl
dnl _QT_INIT_VAR([VARIABLE], [PKG_CONFIG_VARIABLE], [_QT_TOOLS_VARIABEL])
dnl Initialize variable first query from pkg-config if available else fallback to QMake or QtPaths
dnl

AC_DEFUN([_QT_INIT_VAR],
[AS_IF([test "x$ac_cv_env_PKG_CONFIG_set" != "xset"],
      [_QT_TOOL_VARIABLE([$1], [$3])],
      [PKG_CHECK_VAR([$1], [Qt${QT_MAJOR_VERSION}Core], [$2])])
])

AC_DEFUN_ONCE([QT_HOST_BINS],
[case $QT_MAJOR_VERSION in
     5) _QT_INIT_VAR([QT_HOST_BINS], [host_bins], [QT_HOST_BINS]) ;;
     6) _QT_INIT_VAR([QT_HOST_BINS], [bindir], [QT_HOST_BINS]) ;;
 esac
])

AC_DEFUN_ONCE([QT_HOST_LIBEXECS],
[case $QT_MAJOR_VERSION in
      5) : ;;
      6)  _QT_INIT_VAR([QT_HOST_LIBEXECS], [libexecdir], [QT_HOST_LIBEXECS]) ;;
 esac
])

dnl
dnl  EMACS_QT_CHECK_PROG(PROG, description, ACTION-IF-NOT-FOUND)
dnl  Just like AC_PATH_PROG but for Qt progs with another check if error.
dnl

AC_DEFUN([EMACS_QT_CHECK_PROG],
[
  QT_HOST_BINS
  QT_HOST_LIBEXECS

  AS_VAR_PUSHDEF([desc], [$2])

  AC_ARG_VAR(m4_toupper([$1]), [$2])
  AC_PATH_PROG(m4_toupper([$1]), [$1], [nil],
                 [[$QT_HOST_LIBEXECS$PATH_SEPARATOR$QT_HOST_BINS]])

  AS_VAR_IF(m4_toupper([$1]), [nil],
     [$3])
  AS_VAR_POPDEF([desc])
])
