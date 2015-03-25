#!/bin/bash

HOME=/home/vagrant

mkdir $HOME/bashprofile/bak2

BAK=$HOME/bashprofile/bak2

echo $BAK created 

echo Backing up original profile files

mv -f $HOME/.bash_profile $BAK/.bash_profile

mv -f $HOME/.bashrc $BAK/.bashrc

mv -f $HOME/.gitconfig $BAK/.gitconfig

echo Original profile files backed up

echo Pulling in new profile files

BDIR=$HOME/bashprofile

cp $BDIR/.aliases $HOME/.aliases

cp $BDIR/.bash_profile $HOME/.bash_profile

cp $BDIR/.bash_prompt $HOME/.bash_prompt

cp $BDIR/.bashrc $HOME/.bashrc

cp -r $BDIR/code/ $HOME/code/

cp $BDIR/.functions $HOME/.functions

cp $BDIR/.gitconfig $HOME/.gitconfig

echo New profile files copied

echo Installing python-pygments

sudo yum install -y python-pygments

echo Installing nano

sudo yum install -y nano

