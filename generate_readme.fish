#!/usr/bin/fish

pandoc -f html -t markdown resume.html | grep -E -v '</?div' | grep -v ':::' | sed 's%# \[%# %' | sed 's%\]{.project} \[%\n\n*%' | sed 's%\]{.project-at} \[%, %' | sed 's%\]{.dates}%*%' | sed 's%-   \*\*%\*\*%' >README.md
