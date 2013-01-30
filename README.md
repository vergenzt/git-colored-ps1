# Git Colored PS1

This is Bash source for a Git prompt that shows you the status of your git
repository every time you see the prompt.

 - green = staged changes
 - red = unstaged changes
 - gray = untracked files

## Example

![Example shell session](https://raw.github.com/vergenzt/git-colored-ps1/master/example.png)
 
I've found this to be invaluable when working with Git, since you don't have
to type `git status` (or `gs` for those that made the alias) so often, and
don't have to spend the time reading through the output.

## Installation

Either source `git-ps1.sh` from your `.bashrc` or copy and paste the contents.

~~~
(appended to .bashrc)

source /<path>/git-ps1.sh
~~~
