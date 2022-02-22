TARGET=thesis
SRC=$(TARGET).tex

all: $(TARGET).pdf

%.pdf: %.tex
	latexmk $<

.PHONY: clean
clean:
	rm -f $(TARGET).aux
	rm -f $(TARGET).dvi
	rm -f $(TARGET).pdf
	rm -f $(TARGET).log
	rm -f $(TARGET).fdb_latexmk
	rm -f $(TARGET).synctex.gz
	rm -f $(TARGET).fls
	rm -f $(TARGET).bbl
	rm -f $(TARGET).blg
	rm -f $(TARGET).toc

