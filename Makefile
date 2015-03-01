.PHONY: all

all: $(subst .diff,.apply,$(wildcard *.diff))

%.apply: %.diff
	cd mercury && git apply ../$<
