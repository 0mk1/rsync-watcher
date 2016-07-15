#!/bin/bash
DEFAULT=default                             # Default param value.

start() {
    source=$1
    destination=$2
    exclude=".git"

    echo "Source folder: $(readlink -f $source)"
    echo "Destination folder: $(readlink -f $destination)"
    echo "Exclude: $exclude"
    echo 'Are you sure ? [Y/N] [ENTER]'
    read agree

    if [ "$agree" == "Y" ]; then
      echo 'Syncing in progress..'
      while [[ true ]]
      do
          rsync -avz $source $destination --exclude=$exclude
          sleep 15
      done
    fi
}

start $1 $2
exit 0
