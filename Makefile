all:
	echo "THIS MUST BE UPDATED FOR EACH NEW ENVIRONMENT IT IS USED FOR! This makefile requires options!
	This makefile will have two command types, pull and push.
	  - Pull will bring config files on the environment into this repository.
	  - Push will move config files from this repository into the environment.
	The options will be of the format [workstation]_pull and [workstation]_push."

mac_pull: 
	cp /Users/nmorgan1/.bashrc bashrc
	cp /Users/nmorgan1/.vimrc vimrc
	cp /Users/nmorgan1/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings Sublime/Preferences.sublime-settings
	cp -R /Users/nmorgan1/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages/ Sublime/Installed\ Packages

mac_push:
	cp bashrc /Users/nmorgan1/.bashrc
	cp vimrc /Users/nmorgan1/.vimrc
	cp Sublime/Preferences.sublime-settings /Users/nmorgan1/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings
	cp -R Sublime/Installed\ Packages /Users/nmorgan1/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages/
