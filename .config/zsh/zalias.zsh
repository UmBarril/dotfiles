#!/bin/zsh

# https://unix.stackexchange.com/questions/272929/automatically-open-text-files-in-editor-instead-of-attempting-to-run-them
alias -s txt=nvim
alias -s md=nvim
alias -s zshrc=nvim
alias -s png=feh
alias -s jpg=feh
alias -s jpeg=feh
alias -s bmp=feh

alias icat="kitty icat"
alias myip="curl http://ipecho.net/plain"
alias fvim="fzf | xargs -I {} -n 1 nvim {}"
alias fman="compgen -c | fzf | xargs man"
# alias grep="rg"
alias vi="nvim"
alias vim="nvim"
# alias ls="eza --icons"

# alias ls="eza"

alias :q=exit
alias ..='cd .'
alias ....='cd ../..'
alias pm="sudo pacman"
alias p="sudo pacman"
# alias sudo='sudo ' # can use this if using zsh autocorretion https://unix.stackexchange.com/questions/260563/sudo-nocorrect-command-not-found
alias yeet='yay -R'
alias sxiv="nsxiv"
alias image="nsxiv"
alias img="nsxiv"
alias sudovim="sudoedit"

# alias cd to zoxide
# sadly this glitches out when trying to sudo..
alias cd="z"

mkcd() {
    mkdir "$1" && cd "$1";
}

aulahj() {
    vim $(date +aula-%d-%m-%y.md) 
}

alias sl="sl --ed20lcGw"

alias neofetch=fastfetch

alias pigo="ping google.com"

alias vaults="cd $HOME/Outros/Sync/vaults"

alias study="lfcd $HOME/study"
alias estudos="lfcd $HOME/study"
alias college="lfcd $HOME/study"
alias facul="lfcd $HOME/study"
alias projects="lfcd $HOME/projects"
alias projetos="lfcd $HOME/projects"

alias vidwmbar="nvim $HOME/bin/updatedwmbar"
alias vibar="nvim $HOME/bin/updatedwmbar"
alias vizrc="nvim $HOME/.zshrc"
alias vizshrc="nvim $HOME/.zshrc"
alias vizenv="nvim $HOME/.zshenv"
alias vienv="nvim $HOME/.zshenv"
alias vix="nvim $HOME/.xinitrc"
alias viw="nvim $HOME/bin/wayland-start"
alias vialias="nvim $XDG_CONFIG_HOME/zsh/zalias.zsh"
alias visx="nvim $XDG_CONFIG_HOME/sxhkd/sxhkdrc"
alias vidunst="nvim $XDG_CONFIG_HOME/dunst/dunstrc"
alias n="lf $XDG_CONFIG_HOME/nvim"

alias vihypr="nvim $XDG_CONFIG_HOME/hypr/hyprland.conf"

KANBAN_LISTS_PATH="/home/barril/Outros/Sync/vaults/fallout2/02 - TODOs"

alias vitodo="nvim '$KANBAN_LISTS_PATH/TODO.md'"
alias vihoje="nvim '$KANBAN_LISTS_PATH/HOJE.md'"
alias vicompras="nvim '$KANBAN_LISTS_PATH/COMPRAS.md'"
alias vimodificacoes="nvim '$KANBAN_LISTS_PATH/MODIFICACOES.md'"

alias code="code --enable-features=UseOzonePlatform --ozone-platform=wayland"

play-music() {
    find /home/barril/Outros/Sync/music -type f -not -name "*.jpg" -not -path "/home/barril/Outros/Sync/music/foobar2000/*" | fzf --print0 | xargs -0 --no-run-if-empty mpv
}

# doesnt work very well
# should list all packages installed and their sizes
pkgsize(){ expac -SsH M "%m: %n$\t%d" $@ | sort -h | tr '$' '\n'}
