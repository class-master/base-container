#!/bin/bash

for phrase in "lab-1-" "lab-2-" "lab-3-" "lab-4-" "lab-5-" "assignment-1-" "assignment-2-" "assignment-3-" "assignment-4-" "assignment-5-" "intro-to-github"; do
  while read -r line; do 
    repo=`echo $line | grep $phrase | awk '{print $1;}'`
    if [[ $repo != "" ]]; then
      echo $repo
      gh repo delete $repo --confirm
    fi
  done < <(gh repo list -L 2000  CSC231-WCU | awk '{print $1;}')
done
