# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/dora3/.zshrc'

autoload -Uz compinit && compinit
autoload bashcompinit && bashcompinit
# End of lines added by compinstall


# <<<< Customizations start here >>>>
# Alias Corner
alias zshreload='source ~/.zshrc'
alias ls='exa'
alias ll='exa -alh'
alias tree='exa --tree'
alias cat="bat"
alias pman='podman'
alias pmanp='podman pod'
alias pps='podman ps -a'
alias ppp='podman pod ps --ctr-status'
alias ntfy='source ~/.config/scripts/ntfy.sh'
alias myip="curl http://ipecho.net/plain; echo"
alias tedit='vim ~/.cloudflared/config.yaml'
alias trun='cloudflared tunnel run 3036d0ac-faf1-43e1-af0d-1e3b90377634'
eval $(thefuck --alias)

# >>> Startup >>>
colorscript random #pretty colorscripts on startup
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh #load fzf keybindings and autocomplete

# >>> Custom prompt >>>
# autoload -U promptinit && promptinit
# PROMPT='${vcs_info_msg_0_}
#%~ %% '
# autoload -Uz vcs_info
# precmd_vcs_info() { vcs_info }
# precmd_functions+=( precmd_vcs_info )
# setopt prompt_subst
# zstyle ':vcs_info:*' enable git
# zstyle ':vcs_info:git:*' formats '%K{yellow}%F{black}(%b)%f%k %m'
eval "$(starship init zsh)"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/etc/profile.d/conda.sh" ]; then
        . "/usr/etc/profile.d/conda.sh"
    else
        export PATH="/usr/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<



