export PLUG_DIR=$HOME/.zim
if [[ ! -d $PLUG_DIR ]]; then
	git clone https://github.com/zimfw/install  ~/.config/install && cd ~/.config/install/ && zsh ./install.zsh
	rm -rf ~/.config/install
	rm -rf ~/.zimrc
	ln -sf ~/.config/zsh/zimrc ~/.zimrc
fi
