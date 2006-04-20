## Process this file with automake to produce Makefile.in

pwizwrapper_pwizwatchdir=$(libdir)/pwiz
pwizwrapper_pwizwatch_LTLIBRARIES=pwizwatch.la
pwizwatch_la_CPPFLAGS=-D_GNU_SOURCE
pwizwatch_la_LIBADD=-ldl
pwizwatch_la_LDFLAGS=-XCClinker -nostdlib -module -avoid-version
nodist_pwizwatch_la_SOURCES=\
	pwizwatch.c\
	localdecls.h

localdecls.h: create-pwiz-localdecls
	sh create-pwiz-localdecls $(srcdir)

pwizwatch.c: installwatch.c readwatch.diff localdecls.h
	cat $(srcdir)/installwatch.c >pwizwatch.c
	cat $(srcdir)/create-localdecls >create-pwiz-localdecls
	patch <$(srcdir)/readwatch.diff

create-pwiz-localdecls: create-localdecls readwatch.diff
	cat $(srcdir)/installwatch.c >pwizwatch.c
	cat $(srcdir)/create-localdecls >create-pwiz-localdecls
	patch <$(srcdir)/readwatch.diff

DISTCLEANFILES=\
	$(nodist_pwizwatch_la_SOURCES)\
	create-pwiz-localdecls

clean-local:
	rm -f $(DISTCLEANFILES)

EXTRA_DIST=\
	BUGS\
	COPYING\
	create-localdecls\
	description-pak\
	CHANGELOG\
	INSTALL\
	installwatch.sh\
	installwatch.c\
	libctest.c\
	readwatch.diff\
	README\
	README.PWIZ\
	test-installwatch.c\
	TODO\
	VERSION
