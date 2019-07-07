#!/bin/bash

# ==
# == New-year script, tested on a Mac
# ==

# Prevent sed error 'illegal byte sequence'
export LC_ALL=C LC_CTYPE=C LANG=C

newYear=`date +'%Y'`
echo "Updating copyright notice to $newYear"

# Exclude specific directories: -type d \( -path ./.git -o -path ./.other-dir \) -prune -o
# Make sed work on Mac: sed -e
# Prevent making backups: -i ''
find . -type d \( -path ./.git \) -prune -o -type f -print0 | xargs -0 sed -i '' -e "s/Copyright 2014-2019 Vavr/Copyright 2014-$newYear Vavr/"
