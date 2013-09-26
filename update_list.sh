#!/bin/sh
git checkout 7f3fc7a README.md
articles=`cat *.bib | grep '^\s*title' | sed 's/ *title *= *{/* /' | sed 's/} *, *$//' | sort`
n=`echo "$articles" | wc -l | sed 's/ //g'`
echo "## $n articles" >> README.md
echo "$articles" >> README.md
