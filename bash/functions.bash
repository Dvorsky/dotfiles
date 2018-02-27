# SCRIPTS

# UPDATE ALL
morning () {
	#echo '# pull all repos';
	#sh /Users/$USER/pull.sh
	echo '# update composer';
	composer self-update
	echo '# update brew';
	brew update;

	echo 'All set, good morning!'
}