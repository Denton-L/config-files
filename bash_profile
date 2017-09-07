[[ -f ~/.profile ]] && source ~/.profile
[[ -f ~/.bashrc ]] && source ~/.bashrc
[[ -e ~/.startx ]] && source ~/.startx

printf "\nWelcome, %s!\n\n" $USER
return 0
