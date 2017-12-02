VIRTUAL_ENV=venv

$(VIRTUAL_ENV): requirements.txt
	virtualenv --python=python2 $@
	source $@/bin/activate && pip install -r $<

.PHONY: clean
clean:
	-rm -rf $(VIRTUAL_ENV)
