#! /usr/bin/env zsh

# deploy — tiny script to deploy the cryogen blog via ansible

# enables most work to be done from top level dir

#git push

cd ./provn

unset ANSIBLE_INVENTORY
unset ANSIBLE_SSH_ARGS
export ANSIBLE_HOSTS=./hosts

time ansible-playbook site.yaml -b -v -t deploy
