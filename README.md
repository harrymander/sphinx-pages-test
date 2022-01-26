Sphinx GitHub Pages test
========================

Testing hosting [Sphinx](https://www.sphinx-doc.org) documentation on [GitHub
Pages](https://pages.github.com/).

Uses GitHub actions to build the docs and deploy them to this account's GitHub
Pages site:
[harrymander.github.io/sphinx-pages-test](https://harrymander.github.io/sphinx-pages-test)

See [default.yml](./.github/workflows/default.yml) for GitHub workflow
implementation.

PDFs are also generated (using LaTeX) in the workflow, see the
[Actions](https://github.com/harrymander/sphinx-pages-test/actions) page.

To build locally, run `make html`. Run `make` to print a list of available
targets.
