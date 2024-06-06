#!/bin/bash

if [ -z ${BLOG_DIRECTORY} ]; then
	BLOG_DIRECTORY=~/Documents/blog
fi

for dir in */; do
	cd "$dir"
	cp *.pdf "$BLOG_DIRECTORY/ayudantias/mat023/"
	cd ..
done

cd "$BLOG_DIRECTORY"
cabal new-run site build
git add *
git commit -m "Deployed PDFs"
git push
cd "$PWD"
