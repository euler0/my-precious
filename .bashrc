# The individual per-interactive-shell startup file

# Don't do anything if not running interactively.
if [[ $- != *i* ]] ; then
    return
fi

# Avoid succesive duplicates in the bash command history.
HISTCONTROL=ignoredups
