poetry config pypi-token.pypi

rm -Rf ./dist
poetry --build -vv


mkdocs gh-deploy

#Deploy on click
git add . && git commit -am "sync" && git push && git tag 0.0.1 -f && git push --tags -f

#new branch
git checkout -b 0.0.1 && git push --set-upstream origin 0.0.1

