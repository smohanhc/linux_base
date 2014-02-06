#!/bin/bash

if [ $# -eq 0 ]
  then 
    cur_dir=./
  else 
    cur_dir=$1
fi    

if [ -d $cur_dir ]
  then
    for gitdir in `find $cur_dir -name .git 2>/dev/null`; 
      do 
        workdir=${gitdir%/*}; 
        echo $workdir; 
        git --git-dir=$gitdir --work-tree=$workdir status --short; 
        echo ;
      done
  else
    echo $cur_dir ": directory does not exist"
fi
