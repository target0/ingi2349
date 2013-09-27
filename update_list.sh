#!/bin/sh
git checkout 7f3fc7a README.md
articles=`cat *.bib | sed -e 's/^ *//'| grep '^\title' | sed -E 's/^ *title *= *{(.+)}.*$/* \1/' | sort`
n=`echo "$articles" | wc -l | sed 's/ //g'`
echo "## $n articles" >> README.md
echo "$articles" >> README.md
git add README.md
