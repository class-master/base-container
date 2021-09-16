#!/bin/bash

gh auth login --with-token < ~/.tokens
gh alias set repo-delete 'api -X DELETE "repos/$1"'

for phrase in "lab-1-" "lab-2-" "lab-3-" "lab-4-" "lab-5-" "assignment-1-" "assignment-2-" "assignment-3-" "assignment-4-" "assignment-5-"; do
  while read -r line; do 
    repo=`echo $line | grep $phrase | awk '{print $1;}'`
    if [[ $repo != "" ]]; then
      echo $repo
      gh repo-delete $repo
    fi
  done < <(gh repo list -L 2000 CSC231-WCU)
done
