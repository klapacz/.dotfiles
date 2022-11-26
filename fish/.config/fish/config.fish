set brew_bin /opt/homebrew/bin/brew
if test -e $brew_bin
	eval ($brew_bin shellenv)
end

fish_vi_key_bindings

starship init fish | source

alias rm trash
alias serve 'python3 -m http.server'
alias ymd "date '+%Y-%m-%d'"

