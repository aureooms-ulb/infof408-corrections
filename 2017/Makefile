
TARGETS=$(shell find . -maxdepth 1 -type d -name [^\.]\* | sed 's:^\./::' | sort)

all:
	for target in $(TARGETS) ; do \
		make -C $$target ; \
	done


clean:
	for target in $(TARGETS) ; do \
		make -C $$target clean ; \
	done
	rm -f infof408-corrections.zip

zip: infof408-corrections.zip

infof408-corrections.zip: all
	rm -f infof408-corrections.zip
	zip -j infof408-corrections.zip [0-9]*/correction-[0-9]*.pdf extra/*/*.pdf

