## Getting Started

git clone git@github.com:mattcantstop/dotfiles.git

ln -s ~/.dotfiles/.bash_profile ~/.bash_profile  
ln -s ~/.dotfiles/.vimrc ~/.vimrc  
ln -s ~/.dotfiles/.vim/ ~/.vim  
cp ~/.dotfiles/.private.sh.sample ~/.dotfiles/.private.sh (edit
.private.sh for private values)  
ln -s ~/.dotfiles/.private.sh ~/.private.sh  
cp ~/.dotfiles/.gitconfig.sample ~/.dotfiles/.gitconfig (edit config)  
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig  

source ~/.dotfiles/.bash_profile
