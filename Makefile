HOMEPREFIX ?= ~

install: install-vim install-xmodmap

clean: clean-vim clean-xmodmap

clean-all: clean-all-vim clean-all-xmodmap

install-vim:
	@make -C vim/ install

clean-vim:
	@make -C vim/ clean

clean-all-vim:
	@make -C vim/ clean-all

install-xmodmap: clean-xmodmap
	@ln -s `pwd`/xmodmap $(HOMEPREFIX)/.Xmodmap

clean-xmodmap:
	@rm $(HOMEPREFIX)/.Xmodmap

clean-all-xmodmap: clean-xmodmap
