#!/bin/bash

# Function definitions
Help() {
    cat << EOF
Commands may be abbreviated.  Commands are:

!		    debug		mdir		sendport	site
$		    dir		    mget		put		    size
account		disconnect	mkdir		pwd		    status
append		exit		mls		    quit		struct
ascii		form		mode		quote		system
EOF
}

Ls() {
    echo "Ls Function execution."
}
# Code definitions
while true 
do 
    echo -n "ftp> "
    read CND
    case $CND in
        'help') Help ;;
        'ls')   Ls   ;;
        'quit') break ;;
        *) echo "?Invalid command" ;;
    esac
done 