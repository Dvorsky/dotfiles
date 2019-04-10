for config in $HOME/.bash/*.bash; do
	source $config
done
export PATH="$HOME/.cargo/bin:$PATH"
