#!/bin/bash

echo "--- General Git Configuration ---"
echo " "

read -p "Enter your full name: " PRETTY_NAME
read -p "Enter your email address: " EMAIL

echo "Setting name/email defaults."
git config --global user.name "$PRETTY_NAME"
git config --global user.email "$EMAIL"

echo "Setting default commit message editor to TextMate."
git config --global core.editor "mate -w"

echo "Colorizing common git commands."
git config --global color.status auto
git config --global color.diff auto
git config --global color.branch auto

echo " "
echo "--- WebKit Git Configuration"
echo "See: http://trac.webkit.org/wiki/UsingGitWithWebKit"
echo " "

echo "Setting your WebKit bugzilla username to your email."
git config --global bugzilla.username "$EMAIL"
read -p "Enter your bugzilla password for that account: " BUGZILLA_PASS
git config --global bugzilla.password "$BUGZILLA_PASS"

echo "Setting preference for WebKit scripts to append git branch name to every build."
git config core.webKitBranchBuild true
