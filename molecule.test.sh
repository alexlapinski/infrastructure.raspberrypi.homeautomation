#!/bin/sh

// Loop over each 'role' in this project and run 'molecule lint' on it.
for r in `ls "./roles/"`; do 
	cd "$(pwd)/roles/$r"; 
	molecule test; 
done;