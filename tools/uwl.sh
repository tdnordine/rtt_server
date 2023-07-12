#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
    return -1 2>/dev/null || exit "-1"
fi

if [[ $1 =~ (.+)@(.+) ]] ; then
    echo "$1"
    sqlite3 ../server/db "INSERT INTO whitelist_mail (mail) VALUES ($1)"
fi

echo "Done."
