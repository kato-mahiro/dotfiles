#aliaｓいろいろ
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias tree='tree -N'
alias gs='git status'
alias gd='git diff'
alias gl='git log'

#履歴を多く残す
HISTSIZE=10000
HISTFILESIZE=20000

#プロンプトにgitのブランチを表示
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi
if [ -f /etc/bash_completion.d/git-prompt ]; then
    export PS1='\[\033[01;32m\]\u@\h\[\033[01;33m\] \w$(__git_ps1) \n\[\033[01;34m\]\$\[\033[00m\] '
else
    export PS1='\[\033[01;32m\]\u@\h\[\033[01;33m\] \w \n\[\033[01;34m\]\$\[\033[00m\] '
fi

#rmをゴミ箱に
alias rm='mv --backup=numbered --target-directory=${HOME}/.Trash'

# 初回シェル時のみ tmux実行
if [ $SHLVL = 1 ]; then
  tmux
fi

# tmuxと端末上でhistoryを共有する
function share_history {
    history -a
    history -c
    history -r
}
PROMPT_COMMAND='share_history'
shopt -u histappend
