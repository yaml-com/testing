M := $(or $(MAKES_REPO_DIR),.cache/makes)
$(shell [ -d $M ] || git clone -q https://github.com/makeplus/makes $M)
include $M/init.mk
include $M/clean.mk
PYTHON-VENV := $(ROOT)/venv
include $M/python.mk
SHELL-DEPS += $(PYTHON-VENV)
include $M/shell.mk

PYTHON-VENV-SETUP := pip install -r requirements.txt

DEPS := \
  $(PYTHON-VENV) \

MAKES-CLEAN := material site
MAKES-REALCLEAN := $(PYTHON-VENV)
MAKES-DISTCLEAN := .cache ../.vscode


default::

deps: line1 $(DEPS) line2

build serve: $(DEPS)
	mkdocs $@

publish: $(DEPS)
	mkdocs gh-deploy --force

material: $(PYTHON-VENV)
	ln -s $</lib/python*/site-packages/material $@

pip-install: $(PYTHON-VENV)
ifeq (,$(m))
	@echo 'm=<module> is not set'
	@exit 1
endif
	pip install $m
	pip freeze > requirements.txt

freeze: $(PYTHON-VENV)
	pip freeze > requirements.txt

line1 line2:
	@echo =======================================================================
