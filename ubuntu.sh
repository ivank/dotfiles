
sudo apt-get update
sudo apt-get upgrade

sudo apt-get install vim grc meld

if [ ! -f ~/.vim/autoload/plug.vim ]; then
	echo "Installing vim plug"
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

if [ ! -f ~/.grc/.grc.bashrc ]; then
	echo "Installing grc bashrc"
	curl -fLo ~/.grc/.grc.bashrc --create-dirs https://raw.githubusercontent.com/garabik/grc/master/grc.bashrc
fi