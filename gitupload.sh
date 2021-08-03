#!/bin/bash
read -p "Enter first string: " c
git add .&&git commit -m "$c"&&git push||echo "Please give a commit comment."
