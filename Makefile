all: jsclasses.dtx jslogo.dtx jsverb.dtx okumacro.dtx morisawa.dtx \
	jsarticle.cls okumacro.sty jsverb.sty morisawa.sty jslogo.sty \
	jsclasses.pdf okumacro.pdf jsverb.pdf morisawa.pdf jslogo.pdf

jsclasses.dtx: jsclasses-utf8.dtx
	nkf -Wj jsclasses-utf8.dtx >jsclasses.dtx

jslogo.dtx: jslogo-utf8.dtx
	nkf -Wj jslogo-utf8.dtx >jslogo.dtx

jsverb.dtx: jsverb-utf8.dtx
	nkf -Wj jsverb-utf8.dtx >jsverb.dtx

okumacro.dtx: okumacro-utf8.dtx
	nkf -Wj okumacro-utf8.dtx >okumacro.dtx

morisawa.dtx: morisawa-utf8.dtx
	nkf -Wj morisawa-utf8.dtx >morisawa.dtx

jsarticle.cls: jsclasses.dtx
	platex --kanji=jis jsclasses.ins

okumacro.sty: okumacro.dtx
	platex --kanji=jis okumacro.ins

jsverb.sty: jsverb.dtx
	platex --kanji=jis jsverb.ins

morisawa.sty: morisawa.dtx
	platex --kanji=jis morisawa.ins

jslogo.sty: jslogo.dtx
	platex --kanji=jis jslogo.ins

jsclasses.pdf: jsclasses.dtx
	ptex2pdf -l -ot --kanji=jis jsclasses.dtx

okumacro.pdf: okumacro.dtx
	ptex2pdf -l -ot --kanji=jis okumacro.dtx

jsverb.pdf: jsverb.dtx
	ptex2pdf -l -ot --kanji=jis jsverb.dtx

morisawa.pdf: morisawa.dtx
	ptex2pdf -l -ot --kanji=jis morisawa.dtx

jslogo.pdf: jslogo.dtx
	ptex2pdf -l -ot --kanji=jis jslogo.dtx
