.PHONY: all help build

OUTPUT := app
INPUT := $(wildcard *.cpp)
	
all: help

help:
	@echo "usage: make [target]"
	@echo "targets:"
	@echo "help: print this message"
	@echo "build: compile using ./compile_flags.txt"

build:
	@echo $(INPUT)
	$$(command -v clang++) @./compile_flags.txt $(INPUT) -o $(OUTPUT)
