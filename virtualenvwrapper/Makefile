HOMEPREFIX ?= ~

install:
	@mkdir $(HOMEPREFIX)/.virtualenvs
	@ln -s `pwd`/[^M]* $(HOMEPREFIX)/.virtualenvs

clean:
	@rm -rf $(HOMEPREFIX)/.virtualenvs
	
clean-all: clean
