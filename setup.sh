# Make symlinks to all dotfiles

DOTFILES="$HOME/dotfiles"

case "$1" in
	bash)
		echo 'Chosen shell: bash'
		echo 'Making bash config symlinks'

		ln -s $DOTFILES/bash_profile $HOME/.bash_profile
		ln -s $DOTFILES/bashrc $HOME/.bashrc
		ln -s $DOTFILES/bash $HOME/.bash

		echo 'bash symlinks setup \n'

		;;
	zsh)
		echo 'Chosen shell: zsh'
		echo 'Making zsh config symlinks'

		ln -s $DOTFILES/zshrc $HOME/.zshrc
		ln -s $DOTFILES/zsh $HOME/.zsh

		echo 'zsh symlinks setup \n'

		;;
	*)
		echo 'Pass argument for shell (bash/zsh)'
		exit 1
esac

case "$2" in
	mac)
		;;
	linux)
		# Terminator symlinks
		echo 'Making terminator config symlink'

		ln -s $DOTFILES/config/terminator/config $HOME/config/terminator/config

		echo 'Terminator config symlink setup\n'
		;;
	*)
		echo 'You can use mac or linux as second argument for system specific dotfiles'
		;;
esac

echo "Reload your shell for changes to take effect"