#!/usr/bin/env bash

cat slide{1,2,3,4,5,6,7,8,9,10,11}.md  > slides.md && keydown slides slides.md

mv slides.html index.html
