if [ $1 = pure ]; then
    ln -s ~/dotfiles/vimrc_pure ~/.vimrc
elif [ $1 = dein ]; then
    ln -s ~/dotfiles/vimrc_dein ~/.vimrc
else
    echo "引数にはpure か deinを指定すること"
    exit
fi

#bashrcに設定を追記
echo '#~~~~~~~~~~~~~~~~~ added by script ~~~~~~~~~~~~~~~~~~~' >> ~/.bashrc
cat bashrc >> ~/.bashrc
echo '#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~' >> ~/.bashrc
mkdir ~/.Trash
source ~/.bashrc
echo ' ### .bashrcを設定しました ###'

#tmuxの設定
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
tmux source ~/.tmux.conf

#gitの設定
git config --global user.email katomasahiro10@gmail.com
git config --global user.name katomasahiro10
git config --global core.editor vim
echo '### git config を設定しました ###'

echo ' ### 設定が完了しました ### '
