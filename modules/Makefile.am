## Process this file with automake to produce Makefile.in

pwizmodulesdir=$(datadir)/pwiz/modules
pwizmodules_DATA=\
	biarch.pwm\
	filelist.pwm\
	filelist_simplify.pwm\
	find_lang.pwm\
	ftp.pwm\
	gnome.pwm\
	gnu_configure.pwm\
	gnu_make.pwm\
	gtkdoc_split_doc.pwm\
	installwatch.pwm\
	ldconfig.pwm\
	license.pwm\
	manual.pwm\
	package.pwm\
	prefix.pwm\
	rpm_doc.pwm\
	rpm.pwm\
	split_devel.pwm\
	unpack.pwm\
	version.pwm

installwatch.pwm: installwatch.pwm.in Makefile.am
	sed "s%@PW_WRAPPERDIR@%@libdir@/pwiz%g;s%@PW_HELPERDIR@%@libexecdir@/pwiz%g" <$(srcdir)/installwatch.pwm.in >installwatch.pwm

distclean-local:
	rm -f installwatch.pwm

installwatch_cleandir=$(libexecdir)/pwiz
installwatch_clean_PROGRAMS=installwatch_clean
installwatch_clean_CPPFLAGS=-D_GNU_SOURCE
installwatch_clean_SOURCES=installwatch_clean.c

EXTRA_DIST=\
	biarch.pwm\
	filelist.pwm\
	filelist_simplify.pwm\
	find_lang.pwm\
	ftp.pwm\
	gnome.pwm\
	gnu_configure.pwm\
	gnu_make.pwm\
	gtkdoc_split_doc.pwm\
	installwatch.pwm.in\
	ldconfig.pwm\
	license.pwm\
	manual.pwm\
	package.pwm\
	prefix.pwm\
	rpm_doc.pwm\
	rpm.pwm\
	split_devel.pwm\
	unpack.pwm\
	version.pwm
