# Include this in your bashrc to use.

# Regular Colors
Black="\[\033[0;30m\]"        # Black
Red="\[\033[0;31m\]"          # Red
BRed="\[\033[1;31m\]"         # Bold red
Green="\[\033[0;32m\]"        # Green
BGreen="\[\033[1;32m\]"       # Bold green
Yellow="\[\033[0;33m\]"       # Yellow
BYellow="\[\033[1;33m\]"      # Bold yellow
Cyan="\[\033[0;36m\]"         # Cyan
Gray="\[\033[1;30m\]"         # Gray
White="\[\033[0;37m\]"        # White

# Prompt separator
#  This will go between the git indicators and the dollar sign.  It's empty by default,
#  but something I commonly do in the shell is to assign a newline to it, so you have
#  a status line, and then the prompt where you type your command is on the next line.
#
# Example:
#     [12:38:13] user@hostname example_repo (master)*$ SEP="
#     > "
#     [12:41:54] user@hostname example_repo (master)*
#     $

SEP=""

export PS1="\
$Gray[\t] \
$Green\u@\h \
$Yellow\W \
\$(\
    # get the reference description
    if refname=\$(git name-rev --name-only HEAD 2> /dev/null); then\
        # on a branch
        if curbranch=\$(git symbolic-ref HEAD 2> /dev/null); then\
            echo -n '$Cyan('\${curbranch##refs/heads/}')';\
        # detached head
        else\
            # unreachable
            if [ \$refname = 'undefined' ]; then\
                echo -n '$BRed(Unreachable detached HEAD: '\$(git rev-parse HEAD | head -c7)')';\
            # reachable
            else\
                echo -n '$White('\$(git rev-parse HEAD | head -c7)': '\$refname')';\
            fi;\
        fi;\
        git diff --quiet --cached &> /dev/null \
            || echo -n '$BGreen*';\
        git diff --quiet &> /dev/null \
            || echo -n '$BRed*';\
  git status --porcelain 2> /dev/null | grep -q ^?? \
        && echo -n '$Gray*';\
    fi\
)\
$White\$SEP$ "
