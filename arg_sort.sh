#!/bin/bash
# @name:		arg_sort.sh
# @description:	remove first element, sort args and remove duplicates.
# @author:		rednammoc
# @date: 		13/10/25
if [ $# -le 0 ]
then
	echo "Usage: $0 [arg1] ... [argn]"
	exit 0
fi

# Remove first argument 
ARGS=( "$@" )
unset ARGS[0]

# Remove duplicates, sort array and print it.
#
# WARNING: We need to store the output in another variable.
# 	Otherwise the arrays are getting concateneted.
output=$(echo "${ARGS[@]}" | tr ' ' '\n' | sort -u | tr '\n' ' ')
echo "${output[@]}"

