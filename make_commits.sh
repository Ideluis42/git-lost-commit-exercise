#!/usr/bin/env bash

cp helpers/vote.py .
git add vote.py
git commit -m "Add initial vote file"

patch vote.py < helpers/add_google_docstrings.diff
git add vote.py
git commit -m "Add docstrings in Google format"

patch vote.py < helpers/add_rest_docstrings.diff
git add vote.py
git commit --amend -m "Add docstrings in reST format"

patch vote.py < helpers/implement_first_half.diff
git add vote.py
git commit -m "Implement first half of functions"

patch vote.py < helpers/implement_second_half.diff
git add vote.py
git commit -m "Implement second half of functions"
