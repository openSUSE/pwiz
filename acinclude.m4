# AC_BASH_PARAMETER_STAR_EXPANSION_BUG
# ------------------------------------
# Check, whether bash an expansion bug for ${var/\*/}.
# You can use ${var/@BASH_PARAMETER_STAR_ESCAPE@*/} in scripts and
# don't care about this bug.
AC_DEFUN([AC_BASH_PARAMETER_STAR_EXPANSION_BUG],[
  AC_PATH_PROG([PATH_BASH], [bash])
  AC_MSG_CHECKING([whether bash has a \${var/\\*/} expansion bug])
  # Check, whether star expansion inside parameter expansion ${var/\*/}
  # needs extra backslash.
  if test x`$PATH_BASH -c 'ac_var="a*b" ; echo "${ac_var/\*/}"'` = xab ; then
    BASH_PARAMETER_STAR_ESCAPE=\\
    AC_MSG_RESULT([no])
  else
    BASH_PARAMETER_STAR_ESCAPE=\\\\
    AC_MSG_RESULT([yes])
  fi
  AC_SUBST([BASH_PARAMETER_STAR_ESCAPE])
])


# AC_PERL_MODULE_CHECK
# ------------------------------------
# Check, whether required Perl module is installed.
AC_DEFUN([AC_PERL_MODULE_CHECK],[
AC_PATH_PROG([PATH_PERL], [perl])
  if test "x$PATH_PERL" = x ; then
    AC_MSG_ERROR([perl not found])
  fi
  AC_MSG_CHECKING([for $1])
  if $PATH_PERL -e "require $1" 2>/dev/null; then
    AC_MSG_RESULT([yes])
  else
    AC_MSG_RESULT([no])
    AC_MSG_ERROR([$1 perl module is required])
  fi
])
