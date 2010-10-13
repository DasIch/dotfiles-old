HOMEPREFIX ?= ~
VIMPREFIX = $(HOMEPREFIX)/.vim

install: clean build
	@ln -s `pwd`/vimrc $(HOMEPREFIX)/.vimrc
	@mkdir -p $(VIMPREFIX)/sessions
	@ln -s `pwd`/ftplugin $(VIMPREFIX)/ftplugin
	@ln -s `pwd`/plugin $(VIMPREFIX)/plugin
	@ln -s `pwd`/ruby $(VIMPREFIX)/ruby
	@ln -s `pwd`/syntax $(VIMPREFIX)/syntax
	@ln -s `pwd`/autoload $(VIMPREFIX)/autoload
	@ln -s `pwd`/colors $(VIMPREFIX)/colors
	@ln -s `pwd`/bundle $(VIMPREFIX)/bundle

configure-command-t:
	@cd `pwd`/ruby/command-t && ruby extconf.rb

build-command-t: configure
	@cd `pwd`/ruby/command-t && make

clean-command-t: configure
	@cd `pwd`/ruby/command-t && make realclean

configure: configure-command-t

build: build-command-t

clean:
	@rm -rf $(VIMPREFIX) $(HOMEPREFIX)/.vimrc

clean-all: clean clean-command-t
