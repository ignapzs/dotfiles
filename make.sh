#!/bin/bash
############################
# .make.sh
# First steps
############################

########## Variables
projectDir=~/Projects/github/dotfiles 	# dotfiles github directory
backupDir=~/Backup/dotfiles_backup      # old/existing dotfiles backup directory

backupFiles () {
	echo -n "Creating $backupDir for backup of any existing dotfiles ..."
	mkdir -p $backupDir
	echo "done"
}

clear
backupFiles;
