.PHONY: all clean zip

SUBFOLDERS=$(shell find . -maxdepth 1 -type d -name [^\.]\* | sed 's:^\./::' | sort)
ZIP=$(shell basename $(CURDIR))-infof408-exercises

all:
	for subfolder in $(SUBFOLDERS) ; do \
		make -C $$subfolder ; \
	done


clean:
	for subfolder in $(SUBFOLDERS) ; do \
		make -C $$subfolder clean ; \
	done
	rm -f $(ZIP)

zip: $(ZIP)

$(ZIP): all
	rm -f $@
	zip -j $@ [0-9]*/solution-[0-9]*.pdf extra/*/*.pdf
