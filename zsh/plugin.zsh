export PLUG_DIR=$HOME/.zim
if [[ ! -d $PLUG_DIR ]]; then
	git clone https://github.com/zimfw/install  ~/.config/install && cd ~/.config/install/ && zsh ./install.zsh
	rm -r ~/.config/install
	rm ~/.zimrc
	ln -s ~/.config/zsh/zimrc ~/.zimrc
fi
