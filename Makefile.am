## Process this file with automake to produce Makefile.in

SUBDIRS = genopts modules engines installwatch-0.7.0beta3

.gopts:
	$(PATH_BASH) $(top_srcdir)/genopts/genopts $@
SUFFIXES= .gopts

bin_SCRIPTS=pwiz

pwiz.gopts: pwiz.gopts.in Makefile.am
	sed "s%@PW_DATADIR@%@datadir@/pwiz%g;s%@PW_PATH_BASH@%@PATH_BASH@%g;s%@PW_VERSION@%@PACKAGE_VERSION@%g" <$(srcdir)/pwiz.gopts.in >pwiz.gopts

distclean-local:
	rm -rf pwiz.gopts pwiz doc

pwizdocdir=$(docdir)/pwiz-$(PACKAGE_VERSION)
pwizdoc_DATA=\
	develdoc.txt\
	userdoc.txt

pwizhtmldir=$(docdir)/pwiz-$(PACKAGE_VERSION)
pwizhtml_DATA=\
	doc/*.html\
	doc/modules/*.html

all: doc

doc: pwizdoc $(top_srcdir)/modules/*.pwm $(top_srcdir)/modules/*.pwm.in pwiz.gopts
	$(PATH_BASH) $(srcdir)/pwizdoc $(srcdir)
	echo >doc/stamp
	rm doc/stamp

EXTRA_DIST=\
	pwiz.gopts.in\
	pwizdoc\
	$(pwizdoc_DATA)
