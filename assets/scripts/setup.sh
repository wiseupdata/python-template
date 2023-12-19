
ls $HOME/.cache/pypoetry/virtualenvs/

rm -Rf $HOME/.cache/pypoetry/virtualenvs/myproject*
rm poetry.lock
poetry install
poetry shell


poetry add --group dev mkdocs
poetry add --group dev mkdocstrings[python]
poetry add --group dev mkdocs-gen-files
poetry add --group dev mkdocs-literate-nav
poetry add --group dev mkdocs-section-index
poetry add --group dev mkdocs-material
poetry add --group dev mkdocs-material-extensions
poetry add --group dev mkdocs-jupyter
poetry add --group dev pytest

poetry add click

mkdocs new .
mkdocs serve

mkdocs build
touch docs/.nojekyll

poetry run python assets/scripts/gen_ref_pages.py

