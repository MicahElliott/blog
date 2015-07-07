#! /usr/bin/env zsh

# deploy — tiny script to deploy the cryogen blog via ansible

# enables most work to be done from top level dir

cd provn
time ansible-playbook site.yaml -b -v -t deploy
