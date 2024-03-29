#!/bin/zsh

cd "$(dirname "$0")"
git pull
function dryRun() {
	rsync --dry-run -i --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" --exclude "README.md" -av . ~
}
function doIt() {
	rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" --exclude "README.md" -av . ~
}
if [[ "$1" == "--force" || "$1" == "-f" ]]; then
	doIt
else
	echo "Preview of what would change:\n"
	dryRun
	echo
	read -q "REPLY?This may overwrite existing files in your home directory. Are you sure? (y/n) "
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt
	fi
fi
unset doIt
unset dryRun
source ~/.zshrc
