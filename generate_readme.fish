#!/usr/bin/fish

pandoc -f html -t markdown resume.html | egrep -v '</?div' | sed 's%<span class="project">%%' | sed 's%</span> <span class="project-at">%\n\n*%' | sed 's%</span> <span class="dates">%, %' | sed 's%</span>%*%' > README.md
