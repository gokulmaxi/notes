#!/usr/bin/bash
HTML_SETTINGS="$PWD/.assets/html-plain,fn-in,charset=utf-8"
CURRENT_DIR="$PWD"
files=$(find -name '*.tex')
mkdir -p docs/tmp
cd docs/tmp
for file in $files; do
    output_dir=$(dirname "$file")
    mkdir -p $CURRENT_DIR/docs/$output_dir
    echo $output_dir
    if [[ "$file" == *.tex ]]       
    then
        echo $file
        make4ht $CURRENT_DIR/$file -d $CURRENT_DIR/docs/$output_dir
    fi

done
cd $CURRENT_DIR
rm -rf $CURRENT_DIR/docs/tmp
cd docs
tree -H '.' -L 6 --noreport --charset utf-8 -o index.html -P '*.html'

