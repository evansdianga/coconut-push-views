#!/bin/sh
coffee -o lib -c src/index.coffee
envVar='#! /usr/bin/env node'
sed -i.bak "1 s~^.*$~$envVar~" 'lib/index.js' && rm 'lib/index.js.bak'
cp lib/index.js bin/index.js

# https://stackoverflow.com/questions/16745988/sed-command-with-i-option-in-place-editing-works-fine-on-ubuntu-but-not-mac
# https://stackoverflow.com/questions/32610261/sed-error-bad-flag-in-substitute-command-u
https://stackoverflow.com/questions/38255655/trying-to-pull-files-from-my-github-repository-refusing-to-merge-unrelated-his/40959920