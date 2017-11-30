.PHONY: all clean

YEARS=$(shell find . -maxdepth 1 -type d -name [1-9][0-9]\* | sed 's:^\./::' | sort)

all:
	for year in $(YEARS) ; do \
		make -C $$year ; \
	done

clean:
	for year in $(YEARS) ; do \
		make -C $$year clean ; \
	done
