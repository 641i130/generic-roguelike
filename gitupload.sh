#!/bin/bash
if ["$1" = ""]
then
	echo "Please give a commit comment."
else
	git add .
	git commit -m $1
	git push
fi

