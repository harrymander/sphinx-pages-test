SPHINXBUILD ?= sphinx-build
SOURCEDIR = source
BUILDDIR = build
SPHINXAUTOBUILD ?= sphinx-autobuild
SPHINX_HOST ?= localhost
SPHINX_PORT ?= 8000

# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

# Opens docs in a browser and automatically builds and reloads when changes
# made to source
auto:
	$(SPHINXAUTOBUILD) --open-browser --delay 0 \
		--host $(SPHINX_HOST) --port $(SPHINX_PORT) $(SPHINXAUTOUBUILDOPTS) \
		$(SOURCEDIR) $(BUILDDIR)/html

.PHONY: help auto Makefile

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
	$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
