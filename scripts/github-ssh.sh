#!/bin/bash

ssh-keygen -t rsa -b 4096 -C "your_email@example.com"   #replace with your github email

 eval $(ssh-agent -s) #start ssh agent
  
ssh-add ~/.ssh/id_rsa    #path to your keys

cat ~/.ssh/id_rsa.pub   #paste your public key to github account(settings)
