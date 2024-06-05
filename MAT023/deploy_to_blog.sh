#!/bin/bash

if [ -z ${BLOG_DIRECTORY} ]; then
	BLOG_DIRECTORY=~/Documents/blog
fi

for dir in */; do
	cd "$dir"
	cp *.pdf "$BLOG_DIRECTORY/ayudantias/mat023/"
	cd ..
done
