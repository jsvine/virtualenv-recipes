#!/bin/bash
set -e
PREFIX=$1
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source /usr/local/bin/virtualenvwrapper.sh
for recipe in $(ls $DIR/recipes); do
    bname=$(basename $recipe)
    rname="${bname%.*}"
    vname="$PREFIX$rname"
    mkvirtualenv $vname || true # Because mkvirtualenv otherwise exits script
    $DIR/install-recipe.sh $DIR/recipes/$recipe
done
