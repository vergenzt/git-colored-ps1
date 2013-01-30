# Git Colored PS1

This is Bash source for a Git prompt that shows you the status of your git
repository every time you see the prompt.

 - green = staged changes
 - red = unstaged changes
 - gray = untracked files

## Example

~~~
[12:21:23] user@hostname example_repo (master)$                                # (asterisk colors here)
[12:21:35] user@hostname example_repo (master)$     echo "a" > fileA.txt       # (clean)
[12:21:59] user@hostname example_repo (master)*$    git add fileA.txt          #  gray
[12:22:10] user@hostname example_repo (master)*$    git commit -m "test"       #  green
[master (root-commit) 56ffd44] test                 
 1 files changed, 1 insertions(+), 0 deletions(-)   
 create mode 100644 fileA.txt                       
[12:22:17] user@hostname example_repo (master)$     echo "b" >> fileA.txt      # (clean)
[12:22:49] user@hostname example_repo (master)*$    git add fileA.txt          #  red
[12:23:06] user@hostname example_repo (master)*$    echo "c" >> fileA.txt      #  green
[12:23:20] user@hostname example_repo (master)**$   echo "1" > file1.txt       #  green, red
[12:23:33] user@hostname example_repo (master)***$  git add file1.txt          #  green, red, gray
[12:24:38] user@hostname example_repo (master)**$   git commit -m "test 2"     #  green, red
[master 561eeef] test 2                             
 2 files changed, 2 insertions(+), 1 deletions(-)   
 create mode 100644 file1.txt                       
[12:24:43] user@hostname example_repo (master)*$    git reset --hard           #  red
HEAD is now at 561eeef test 2                       
[12:24:50] user@hostname example_repo (master)$                                # (clean)
~~~
 
I've found this to be invaluable when working with Git, since you don't have
to type `git status` (or `gs` for those that made the alias) so often, and
don't have to spend the time reading through the output.

## Installation

Either source `git-ps1.sh` from your `.bashrc` or copy and paste the contents.

~~~
(appended to .bashrc)

source /<path>/git-ps1.sh
~~~
