#!/bin/bash

function exit_with_error {
    echo $1
    exit 1
}

GIT_PATH=$(which git)

# Check if git is installed
which git > /dev/null 2>&1

if [ $? -ne 0 ]; then
    exit_with_error "git is not installed"
fi

# Create git aliases
$GIT_PATH config --global alias.st status
$GIT_PATH config --global alias.ci commit
$GIT_PATH config --global alias.sw switch
$GIT_PATH config --global alias.co checkout
$GIT_PATH config --global alias.br branch
$GIT_PATH config --global alias.df diff
$GIT_PATH config --global alias.lg "log --oneline"
$GIT_PATH config --global alias.lga "log --oneline --decorate --all --graph"
$GIT_PATH config --global alias.lpd "log --pretty='%C(yellow)%h %C(cyan)%cd %Cblue%aN%C(auto)%d %Creset%s' --date-order"
$GIT_PATH config --global alias.lgdg "log --oneline --decorate --graph"
$GIT_PATH config --global alias.lgar "log --oneline --decorate --all --graph --date=relative"
$GIT_PATH config --global alias.lgpd "log --pretty='%C(yellow)%h %C(cyan)%cd %Cblue%aN%C(auto)%d %Creset%s' --graph --date-order"
$GIT_PATH config --global alias.lgarm "log --oneline --decorate --all --graph --date=relative --numstat"
$GIT_PATH config --global alias.lgars "log --oneline --decorate --all --graph --date=relative --stat"
$GIT_PATH config --global alias.lgpdr "log --pretty='%C(yellow)%h %C(cyan)%cd %Cblue%aN%C(auto)%d %Creset%s' --date=relative --date-order"