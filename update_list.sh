#!/bin/sh
git checkout 7f3fc7a README.md
articles=`cat *.bib | perl -nle 'print "* $1" if /^\s*title\s*=\s*\{(.+)\}\s*,\s*$/i' | sort`
n=`echo "$articles" | wc -l | sed 's/ //g'`
echo "## $n articles" >> README.md
echo "$articles" >> README.md
git add README.md
