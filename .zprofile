# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
# for file in ~/.{path,exports,aliases,functions,extra}; do
for file in ~/.{path,exports,aliases,functions,extra}; do
    [ -r "$file" ] && source "$file"
done
unset file

[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

autoload -U compinit && compinit
