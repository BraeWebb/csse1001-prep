OUTPUT := out/
TMP := tmp/
WEEKS := $(wildcard ./week*.tex)

TEX=pdflatex
FLAGS=-shell-escape -interaction=batchmode -file-line-error

all: $(WEEKS)
	@for week in $(WEEKS); do \
		echo $${week}; \
		make build WEEK=$${week}; \
	done

build: csse1001.cls $(find_files)
	mkdir -p $(OUTPUT)
	mkdir -p $(TMP)
	$(TEX) $(FLAGS) -output-directory=$(TMP) $(WEEK)
	mv $(TMP)*.pdf $(OUTPUT)
	rm -r $(TMP)

