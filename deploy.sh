#!/usr/bin/env bash

python3 manage.py test

if [ -z $? ]; then
	git push heroku main
	exit 0
fi

echo "There are errors in the code"

exit 1