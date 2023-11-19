pdf: tex.tex
	lualatex -synctex=1 -interaction=nonstopmode -file-line-error -pdf tex.tex

glossaries: tex.tex ./src/glossaries/abbreviations.tex ./src/glossaries/symbols.tex
	makeglossaries tex

citations: tex.tex ./src/bib/zdroje.bib
	biber tex.bcf

clean:
	rm -rf *.aux *.bbl *.log *.nav *.snm *.out *.synctex.gz *.toc *.fls *.run.xml *.fdb_latexmk *.blg *-blx.bib *.bcf *.blg *.glo *.ist *.lof *.log *.lot *.ntn* *.slg *.symbol *.glg *.gls *.abbreviation
