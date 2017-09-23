#MACROS
SHELL = ./src/report_time.sh
CC = gcc
CFLAGS = -Wall -pedantic -O2 -ansi -c
FNULL = /dev/null

all: function.png meshgrid.png merged.png

build/mesh.o: src/mesh.c
	$(CC) $(CFLAGS) src/mesh.c -o build/mesh.o

build/mesh.out: build/mesh.o
	$(CC) build/mesh.o -o build/mesh.out

build/meshgrid.txt: build/mesh.out
	./build/mesh.out ${NA} ${NB} ${A} ${B} > build/meshgrid.txt

build/draw.txt: src/drawfun.py src/fun.py
	python3 src/drawfun.py > build/draw.txt

build/merged.txt: src/merge.py build/meshgrid.txt build/draw.txt
	python3 src/merge.py > build/merged.txt

function.png meshgrid.png merged.png: build/meshgrid.txt build/draw.txt build/merged.txt src/plot.gnuplot
	gnuplot src/plot.gnuplot


clean:
	-@rm *~ src/*~ *png build/* 2> $(FNULL) || true 
