# homebrew用にパスを追加
export PATH=/user/local:$PATH

#homebrewでインストールしたgitにパスを通す
export PATH="/usr/local/Cellar/git/2.18.0.bin:$PATH"

# ターミナルに色をつける
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# grepの結果に色をつける
export GREP_OPTIONS='--color=auto'

# .bashrcが存在する場合に読み込むようにする
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# クイックルックコマンドを作成
alias ql='qlmanage -p "$@" >& /dev/null'

#pomodoroコマンドを設定
alias pomodoro='python3 ~/pomodoro/pomodoro.py'

# gitの補完を有効にする
source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash

# ターミナルにgitのブランチ名を表示する
GIT_PS1_SHOWDIRTYSTATE=true

#プロンプトに色付け
export PS1='\[\e[01;37;44m\]\w\[\e[0;0m\]\[\e[0;31m\]$(__git_ps1 [%s])\[\e[0;0m\]\$ '

#履歴を多く残す
HISTSIZE=10000
HISTFILESIZE=20000

#aliaｓいろいろ
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias tree='tree -N'
