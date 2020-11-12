# install vim
apt install -y vim

# install vim-plug for linux
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# get vim configuration
git clone https://github.com/SepehrImanian/mylocalvimconf.git
cd mylocalvimconf; mv .vimrc ~/

# install vim plugin
vim +PlugInstall +qall .vimrc > /dev/null

# build for 'youcompleteme' plugin
apt install -y build-essential cmake python3-dev
cd ~/.vim/plugged/youcompleteme

# autocomplete go
python3 install.py --go-completer

# autocomplete js
python3 install.py --tern-completer

# autocomplete install
python3 install.py
