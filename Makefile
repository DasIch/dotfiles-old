HOMEPREFIX ?= ~

install: install-vim install-xmodmap install-bashrc install-virtualenvwrapper

clean: clean-vim clean-xmodmap clean-bashrc clean-virtualenvwrapper

clean-all: clean-all-vim clean-all-xmodmap clean-all-bashrc clean-all-virtualenvwrapper

install-vim: update
	@make -C vim/ install

clean-vim:
	@make -C vim/ clean

clean-all-vim:
	@make -C vim/ clean-all

install-xmodmap: clean-xmodmap
	@ln -s `pwd`/xmodmap $(HOMEPREFIX)/.Xmodmap

clean-xmodmap:
	@rm -f $(HOMEPREFIX)/.Xmodmap

clean-all-xmodmap: clean-xmodmap

install-bashrc: clean-bashrc
	@ln -s `pwd`/bashrc $(HOMEPREFIX)/.bashrc

clean-bashrc:
	@rm -f $(HOMEPREFIX)/.bashrc

clean-all-bashrc: clean-bashrc

install-virtualenvwrapper:
	@make -C virtualenvwrapper/ install

clean-virtualenvwrapper:
	@make -C virtualenvwrapper/ clean

clean-all-virtualenvwrapper:
	@make -C virtualenvwrapper/ clean-all

update:
	@git submodule init
	@git submodule update
