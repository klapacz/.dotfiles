starship init fish | source

alias rm trash
alias serve 'python3 -m http.server'
alias ymd "date '+%Y-%m-%d'"

set fish_greeting
set -gx LANG 'en_US.UTF-8'
set -gx EDITOR 'nvim'


fish_vi_key_bindings
bind -M insert \co 'commandline n; commandline -f execute'


abbr --add gpg-decrypt gpg --encrypt --recipient lapacz.kornel@gmail.com file
abbr --add gpg-encrypt "gpg --decrypt file.gpg > file"
