## Process this file with automake to produce Makefile.in

.gopts:
	@PATH_BASH@ $(top_srcdir)/genopts/genopts $(srcdir)/$@
SUFFIXES= .gopts

noinst_SCRIPTS=\
	genopts\
	genopts_example\
	genopts_example2

distclean-local:
	rm -f genopts_example genopts_example2

EXTRA_DIST=\
	genopts\
	genopts_example.gopts\
	genopts_example2.gopts
