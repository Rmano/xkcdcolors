manual:
	latexmk -pv  xkcdcolors-manual.tex

local-install: manual
	dir=$$(kpsewhich -var-value=TEXMFHOME); \
	    mkdir -p $$dir/tex/latex/xkcdcolors/; \
	    mkdir -p $$dir/doc/latex/xkcdcolors/; \
	    cp xkcdcolors-manual.pdf $$dir/doc/latex/xkcdcolors/; \
	    cp xkcdcolors.sty  $$dir/tex/latex/xkcdcolors/


ctan-plain: manual
	rm -rf ./xkcdcolors xkcdcolors.zip
	mkdir -p ./xkcdcolors
	cp README.md lppl-*.txt ./xkcdcolors
	cp xkcdcolors.sty xkcdcolors-manual.tex ./xkcdcolors
	cp xkcdcolors-manual.pdf  ./xkcdcolors/
	zip -r --from-crlf xkcdcolors.zip ./xkcdcolors/

ctan-dtx: manual
	rm -rf ./xkcdcolors xkcdcolors.zip
	mkdir -p ./xkcdcolors
	makedtx -author "Romano Giannetti <romano.giannetti@gmail.com>" -src "xkcdcolors\.sty=>xkcdcolors.sty" -doc xkcdcolors-manual.tex xkcdcolors
	mv xkcdcolors.ins xkcdcolors.dtx ./xkcdcolors
	cp README.md ./xkcdcolors
	cp xkcdcolors-manual.pdf  ./xkcdcolors/xkcdcolors.pdf
	zip -r --from-crlf xkcdcolors.zip ./xkcdcolors/

clean:
	latexmk -C xkcdcolors-manual.tex
	rm -rf ./xkcdcolors xkcdcolors.zip
