#!/bin/bash
#
# Get current and parent process-id.
#
# 13/07/12
#
echo -e "PID:\t$$"
echo -e "PPID:\t`ps -p $$ -o ppid=`"

