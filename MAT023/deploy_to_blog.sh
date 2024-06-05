#!/bin/bash

BLOG_DIRECTORY=~/Documents/blog

for dir in */; do
	cd "$dir"
	cp *.pdf "$BLOG_DIRECTORY/ayudantias/mat023/"
	cd ..
done
