ctan-plain:
	latexmk -pv xkcdcolors-manual.tex
	rm -rf ./xkcdcolors xkcdcolors.zip
	mkdir -p ./xkcdcolors
	cp README.md lppl-*.txt ./xkcdcolors
	cp xkcdcolors.sty xkcdcolors-manual.tex ./xkcdcolors
	cp xkcdcolors-manual.pdf  ./xkcdcolors/
	zip -r --from-crlf xkcdcolors.zip ./xkcdcolors/

ctan-dtx:
	latexmk -pv xkcdcolors-manual.tex
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
