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
