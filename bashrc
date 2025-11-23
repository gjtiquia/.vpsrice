# make sure you run the install.sh script first
# assumes you installed .vpsrice at ~/.vpsrice

# aliases = link to installed binaries
alias fastfetch="~/.vpsrice/downloads/fastfetch/usr/bin/fastfetch"

# aliases
alias q="exit"
alias c="clear"

# aliases - tools
alias ff="fastfetch"
alias cf="c & ff"
alias v="vim"
alias lg="lazygit"

# Set up yazi - y shell wrapper
function y() {
    local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
    yazi "$@" --cwd-file="$tmp"
    IFS= read -r -d '' cwd <"$tmp"
    [ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
    rm -f -- "$tmp"
}

# Set up zoxide - z command and zi [i]nteractive command
eval "$(zoxide init bash)"
