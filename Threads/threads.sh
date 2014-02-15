#!/bin/bash
#
# This file is an example how to do things parallel with bash.
#
# Source: opennomad.com
#
# 15/12/12
#
# red

OUTPUT="/tmp/.test"

# Create named pipe
mkfifo $OUTPUT &> /dev/null

thread () {
	sleep 3
	echo "thread $1" > $OUTPUT &
}

# run in parallel
for x in {1..100}
do
	echo "run $x"
	thread $x &
done

# wait for all threads to finish
wait

cat $OUTPUT
rm $OUTPUT
