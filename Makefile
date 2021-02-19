sync:
	@yes | cp  ~/.vimrc ~/Desktop/Ubuntu_Backup
	@yes | cp  ~/.zshrc ~/Desktop/Ubuntu_Backup
	@yes | cp  ~/.tmux.conf ~/Desktop/Ubuntu_Backup
	@yes | cp  ~/.zpreztorc ~/Desktop/Ubuntu_Backup
	@yes | cp  ~/.Xmodmap ~/Desktop/Ubuntu_Backup

git:
	@make sync
	@ssh-add
	@git add .
	@git commit -m "LeDTruong"
	@git push
