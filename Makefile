OUTPUT := out/
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
	$(TEX) $(FLAGS) -output-directory=$(OUTPUT) $(WEEK) || true

