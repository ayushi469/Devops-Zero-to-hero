#!/bin/bash 

##################################
## Function Use case:
##################################


check_disk() {
	echo "Disk size is:"
	df -h
}

check_memory() {
	echo "Memory size is:"
	vm_stat | grep -i "pages free"
}

check_uptime() {
	echo "Uptime is :"
	uptime
}

check_user() {
	echo "User is :"
	whoami
}

main() {
	check_disk
	echo
	check_memory
	echo
	check_uptime
	echo
	check_user
	echo
}

echo "Calling all the functions:"
main
