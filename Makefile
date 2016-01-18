.PHONY: all

GIT:=git

all: $(subst .diff,.apply,$(wildcard *.diff)) clean

%.apply: %.diff
	@echo apply $*
	@cd mercury && $(GIT) apply $(PWD)/$<

.PHONY: clean
clean:
	cd mercury && $(GIT) checkout . && $(GIT) clean -f
