export PLUG_DIR=$HOME/.zim
export ZIM_DIR=$HOME/.config
if [[ ! -d $PLUG_DIR ]]; then
	git clone https://github.com/zimfw/install  $ZIM_DIR/install && cd $ZIM_DIR/install/ && zsh ./install.zsh
	rm -r $ZIM_DIR/install
	rm ~/.zimrc
	ln -s ~/.config/zsh/zimrc ~/.zimrc
fi
