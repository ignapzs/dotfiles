#!/bin/bash
############################
# .make.sh
# More advanced version
############################

########## Variables
userDir=~
projectDir=$userDir/Projects/github/dotfiles 	# dotfiles github directory
backupDir=$userDir/Backup/dotfiles_backup     # old/existing dotfiles backup directory
date=$(date +"%Y%m%d%H%M%S")
# list of files/folders to symlink in homedir
dotFiles="alias antigenrc bashrc gitconfig p10k.zsh zshrc"


itsDone () {
  echo "done"
}

tick () {
  echo -e "\xE2\x9C\x94" | iconv -f UTF-8
}

backupFiles () {
	echo "Creating $backupDir for backup of any existing dotfiles ..."
	mkdir -p $backupDir
	echo "Backup of files ..."

  for file in $dotFiles; do
      echo -n "$file "
      cp ~/."$file" $backupDir/."$file"."$date"
      tick
  done

}

downloadTheProject () {
  dotfilesGitHubURL="https://github.com/ignapzs/dotfiles"
  echo "Downloading dotfiles project from $dotfilesGitHubURL ..."
  cd $userDir/Projects/github/ || exit 1
  git clone $dotfilesGitHubURL
  itsDone
}

clear
backupFiles;
downloadTheProject;
#installRequiredSW;
#performLinking;
#performCheckings;
