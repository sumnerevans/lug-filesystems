#
# Makefile
#

OUTPUT_FILE=filesystems
PDF_VIEWER=zathura
LATEX_COMPILER=xelatex -shell-escape

all: compile

run: compile
	$(PDF_VIEWER) $(OUTPUT_FILE).pdf

compile:
	$(LATEX_COMPILER) $(OUTPUT_FILE).tex

clean:
	rm $(OUTPUT_FILE).nav $(OUTPUT_FILE).snm $(OUTPUT_FILE).toc
