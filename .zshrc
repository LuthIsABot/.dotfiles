# add to path
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export XDG_DATA_DIRS="$HOME/.local/share:$XDG_DATA_DIRS"
export EDITOR="nvim"
export SUDO_EDITOR="nvim"

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/Luth/.zshrc'

# Enable vi mode
bindkey -v

function zle-line-init zle-keymap-select {
    if [[ $KEYMAP == vicmd ]]; then
        # NORMAL mode shows indicator
        RPS1="-- NORMAL --"
    else
        # INSERT mode shows nothing
        RPS1=""
    fi
    RPS2=$RPS1
    zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# Zsh prompt with RGB colors
autoload -U colors && colors

# You can keep truecolor sequences like this
PS1="%F{#735fcf}luth%f%F{#c099f3}:%f%F{#f2aff0}%~ %f%F{#f2aff0}>> %f"

# Use Neovim instead of vim or vi
alias vim='nvim'
alias vi='nvim'
alias fvi='nvim $(fzf --preview="bat --color=always {}")'
alias pulltodo='rclone copy dropbox:/todo.md ~/Documents/ --update && echo "todo.md synced"'
alias pushnotes='rclone copy ~/esoft gdrive:/esoft --update --progress && echo "notes synced"'
# alias ls='ls -a'

source <(fzf --zsh)

if [[ -n $PS1 ]] && command -v tmux &>/dev/null; then
    if [[ -z $TMUX ]]; then
        tmux new-session -A -s 0
    fi
fi


bindkey -s ^f "tmux-sessionizer\n"

autoload -Uz compinit
compinit
# End of lines added by compinstall
alias zen="flatpak run app.zen_browser.zen"
export PATH="$PATH:$(npm config get prefix)/bin"
