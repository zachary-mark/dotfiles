#!/bin/bash

for img in $(docker images | awk '{print $3}' | sort -u) ; do 
  docker rmi -f $img 
done
