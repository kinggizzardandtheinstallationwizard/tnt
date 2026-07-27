</$objtype/mkfile
BIN=$home/bin/$objtype

TARG=tnt

OFILES=\
	tnt.$O\
	addr.$O\
	buff.$O\
	cols.$O\
	disk.$O\
	ecmd.$O\
	edit.$O\
	elog.$O\
	exec.$O\
	file.$O\
	fsys.$O\
	logf.$O\
	look.$O\
	regx.$O\
	rows.$O\
	scrl.$O\
	text.$O\
	time.$O\
	util.$O\
	wind.$O\
	xfid.$O\

HFILES=dat.h\
	edit.h\
	fns.h\

</sys/src/cmd/mkone

$O.out:	/$objtype/lib/libframe.a /$objtype/lib/libdraw.a /$objtype/lib/libthread.a

edit.$O ecmd.$O elog.$O:	edit.h

syms:V:
	$CC -a tnt.c > syms
	for(i in ????.c) $CC -aa $i >> syms
