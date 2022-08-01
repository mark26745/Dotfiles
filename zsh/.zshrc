# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
autoload -Uz compinit && compinit
# End of lines added by compinstall

autoload bashcompinit && bashcompinit

# <<<< Customizations start here >>>>
# Prompt config
autoload -U promptinit && promptinit
PROMPT='${vcs_info_msg_0_}
%~ %% '
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git:*' formats '%K{yellow}%F{black}(%b)%f%k %m'

# Package configs
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

# >>> AWS autocomplete
complete -C '/usr/local/bin/aws_completer' aws


# alias corner
alias myip="curl http://ipecho.net/plain; echo"
alias zshreload='source ~/.zshrc'
alias pman='podman'
alias pmanp='podman pod'
alias pps='podman ps -a'
alias ppp='podman pod ps --ctr-status'

# Noice colorscripts for startup : Thank you DT
colorscript random #pretty colorscripts on startup

