## Process this file with automake to produce Makefile.in

pwizmodulesdir=$(datadir)/pwiz/modules
pwizmodules_DATA=\
	biarch.pwm\
	filelist.pwm\
	filelist_simplify.pwm\
	find_lang.pwm\
	freshmeat.pwm\
	ftp.pwm\
	gnome.pwm\
	gnu_configure.pwm\
	gnu_make.pwm\
	gtkdoc_split_doc.pwm\
	http.pwm\
	installwatch.pwm\
	ldconfig.pwm\
	license.pwm\
	manual.pwm\
	package.pwm\
	prefix.pwm\
	rpm_doc.pwm\
	rpm.pwm\
	sourceforge.pwm\
	split_devel.pwm\
	tld.pwm\
	unpack.pwm\
	uri.pwm\
	version.pwm

freshmeat.pwm: freshmeat.pwm.in Makefile.am
	sed "s%@PW_WRAPPERDIR@%@libdir@/pwiz%g;s%@PW_HELPERDIR@%@libexecdir@/pwiz%g" <$(srcdir)/freshmeat.pwm.in >freshmeat.pwm

http.pwm: http.pwm.in Makefile.am
	sed "s%@PW_WRAPPERDIR@%@libdir@/pwiz%g;s%@PW_HELPERDIR@%@libexecdir@/pwiz%g" <$(srcdir)/http.pwm.in >http.pwm

installwatch.pwm: installwatch.pwm.in Makefile.am
	sed "s%@PW_WRAPPERDIR@%@libdir@/pwiz%g;s%@PW_HELPERDIR@%@libexecdir@/pwiz%g" <$(srcdir)/installwatch.pwm.in >installwatch.pwm

distclean-local:
	rm -f freshmeat.pwm installwatch.pwm http.pwm

pwizhelperdir=$(libexecdir)/pwiz
pwizhelper_SCRIPTS=\
	freshmeat_xml_parse\
	http_html_printurls

installwatch_cleandir=$(libexecdir)/pwiz
installwatch_clean_PROGRAMS=installwatch_clean
installwatch_clean_CPPFLAGS=-D_GNU_SOURCE
installwatch_clean_SOURCES=installwatch_clean.c

EXTRA_DIST=\
	biarch.pwm\
	filelist.pwm\
	filelist_simplify.pwm.in\
	find_lang.pwm\
	freshmeat.pwm.in\
	freshmeat_xml_parse\
	ftp.pwm\
	gnome.pwm\
	gnu_configure.pwm\
	gnu_make.pwm\
	gtkdoc_split_doc.pwm\
	http.pwm.in\
	http_html_printurls\
	installwatch.pwm.in\
	ldconfig.pwm\
	license.pwm\
	manual.pwm\
	package.pwm\
	prefix.pwm\
	rpm_doc.pwm\
	rpm.pwm\
	sourceforge.pwm\
	split_devel.pwm\
	tld.pwm\
	unpack.pwm\
	uri.pwm\
	version.pwm
