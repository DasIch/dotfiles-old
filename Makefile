HOMEPREFIX ?= ~

install: install-vim

clean: clean-vim

clean-all: clean-all-vim

install-vim:
	@make -C vim/ install

clean-vim:
	@make -C vim/ clean

clean-all-vim:
	@make -C vim/ clean-all
