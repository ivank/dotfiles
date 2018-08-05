
# Enable colors for the ls command
if [[ "$OSTYPE" == "darwin"* ]]; then
	export CLICOLOR=1;
else
	alias ls="ls --color=auto";
fi

export LSCOLORS=GxFxCxDxBxegedabagaced

# Set vim as the default editor in the terminal
export VISUAL=vim
export EDITOR="$VISUAL"

# set UTF-8 locale
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Load bash prompt
source ~/.bash_prompt

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

# Enable some Bash 4 features when possible:
# * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux`
# * Recursive globbing, e.g. `echo **/*.txt`
for option in autocd globstar; do
    shopt -s "$option" 2> /dev/null;
done;

# Add tab completion for many Bash commands
if which brew > /dev/null && [ -f "$(brew --prefix)/etc/bash_completion" ]; then
    source "$(brew --prefix)/etc/bash_completion";
fi;

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2 | tr ' ' '\n')" scp sftp ssh;

# If possible, add tab completion for many more commands
if [ -f /etc/bash_completion ]; then
    source /etc/bash_completion
fi

# Alias github's hub to git
# https://github.com/github/hub#aliasing
eval "$(hub alias -s)"
