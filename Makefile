init:
	# oh-my-zsh
	sh -c "$$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

	# zsh-autosuggestions
	git clone https://github.com/zsh-users/zsh-autosuggestions $(ZSH)/custom/plugins/zsh-autosuggestions

	# zsh-syntax-highlighting
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $(ZSH)/custom/plugins/zsh-syntax-highlighting

	make link
link:
	ln -fs `pwd`/.aliases ~/.aliases
	ln -fs `pwd`/.gitignore_global ~/.gitignore_global
	ln -fs `pwd`/.tmux.conf ~/.tmux.conf
	ln -fs `pwd`/.vimrc ~/.vimrc
	ln -fs `pwd`/.zshrc ~/.zshrc
