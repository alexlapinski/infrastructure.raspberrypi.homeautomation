#!/bin/sh

BASE_DIR=$(pwd)
ROLES=`ls "$BASE_DIR/roles/"`

// Loop over each 'role' in this project and run 'molecule lint' on it.
for role in $ROLES; do 
	cd "$BASE_DIR/roles/$role/"; 
	molecule lint; 
done;

// Go back to starting location
cd $BASE_DIR;