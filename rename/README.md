# Use vim to rename multiple files

:r !ls
:%s/^session-\([0-9-]\+\).txt/mv session-\1.txt \1-lecture.txt/
:w !sh
