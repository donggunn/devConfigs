# Dev configurations for Ubuntu
Configuration parameters used on the different linux applications. My personal set up.

![Screenshot](http://i.imgur.com/xXjk0NV.png)

## Unity tmux shortcut
First thing, copy .termric.sh to your home folder or whatever location you feel suitable, this path should be updated on 
the tmux.desktop file.

Copy tmux.desktop to your /usr/share/applications/ folder, keep in mind you need sudo permission to do so. 

To see the new app on unity reload its database with:

	sudo update-desktop-database

## Gnome Terminal Theme

Run ./base16-monokai.dark.sh this will add a new profile on your terminal emulator. 
These scripts were made by [Chris Kempson](https://github.com/chriskempson/base16-gnome-terminal)


## OhMyZsh

**Installing zsh:**

	sudo apt-get update
	sudo apt-get install zsh

**Installing Oh my zsh** (This requires you to have Git)
	
	sudo curl -L http://install.ohmyz.sh | sh

Execute zsh for the first time and select the recommended option (The one that creates the .zshrc with default values)
Then edit the ZSH_THEME parameter on your ~/.zshrc file replacing it with "xiong-chiamiov-plus"
	
	ZSH_THEME="xiong-chiamiov-plus"  


## Tmux

First of all install tmux

	sudo apt-get update
	sudo apt-get install tmux

Then copy/replace the .tmux.conf file of your home directory with the one on this repository (tmux/.tmux.conf)


## Vim

Copy the folder colors to your ~/.vim/ folder (Created it if you don't have it) then copy .vimrc file to your home directory. In case you have one, just update its content with the one provided.



	



