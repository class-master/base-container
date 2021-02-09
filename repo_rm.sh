#!/bin/bash

for phrase in "lab-1-" "lab-2-" "lab-3-" "lab-4-" "lab-5-" "assignment-1-" "assignment-2-" "assignment-3-" "assignment-4-" "assignment-5-"; do
  while read -r line; do 
    repo=`echo $line | grep $phrase`
    if [[ $repo != "" ]]; then
      echo $repo
      gh repo-delete $repo
    fi
  done < <(gh repos CSC231-WCU)
done
