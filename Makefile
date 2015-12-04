
all:
	make -C 1
	make -C 2
	make -C 3
	make -C 4
	make -C 5
	make -C 6
	make -C 7
	make -C extra

clean:
	make -C 1 clean
	make -C 2 clean
	make -C 3 clean
	make -C 4 clean
	make -C 5 clean
	make -C 6 clean
	make -C 7 clean
	make -C extra clean
	rm -f infof408-corrections.zip

zip: infof408-corrections.zip

infof408-corrections.zip: all
	rm -f infof408-corrections.zip
	zip -j infof408-corrections.zip [0-9]*/correction-[0-9]*.pdf extra/*/*.pdf

