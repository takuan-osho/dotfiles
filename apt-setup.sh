#!/bin/sh

# updateする前にしておきたいこと
sudo aptitude -y install ssh;

# 日本語設定
sudo aptitude install -y language-pack-ja;
sudo dpkg-reconfigure locales;

# アップデート
sudo aptitude update -y;
sudo aptitude upgrade -y;

cat >> ~/.bash_profile <<EOF
if [ -f ~/.bashrc ] ; then #.bashrcがあるならそっちをつかう
     . ~/.bashrc
fi
EOF

# 各種必要なものをインストール
sudo aptitude install -y ntp;
sudo aptitude install -y vim;
sudo aptitude install -y git;
sudo aptitude install -y tree;
sudo aptitude install -y tmux;

sudo aptitude install -y build-essential;
sudo aptitude install -y libsqlite3-dev;
sudo aptitude install -y libreadline6-dev;
sudo aptitude install -y libgdbm-dev;
sudo aptitude install -y zlib1g-dev;
sudo aptitude install -y libbz2-dev;
sudo aptitude install -y sqlite3;
sudo aptitude install -y tk-dev;
sudo aptitude install -y zip;

# python関係のインストール
sudo aptitude install -y python-dev;

# NeoBundleするための準備
mkdir ~/.vim/bundle;
sudo chown -R $USER:$USER.vim;
sudo chown -R $USER:$USER.viminfo;
git clone git://github.com/Shougo/neobundle.vim.git ~/.vim/neobundle.vim;

# gitのデフォルト設定
git config --global user.name "SHIMIZU Taku";
git config --global user.email shimizu.taku@gmail.com;
git config --global core.editor 'vim -c "set fenc=utf-8"';
git config --global color.ui auto
git config --global alias.st status
git config --global alias.ci commit
git config --global alias.co checkout
git config --global alias.d diff
