#!/bin/bash

cat /tmp/text.txt |  while read output
do
    echo -n "Check SSH" | nc -4t -q0 "$output" 22 > /dev/null
    if [ $? -eq 0 ]; then
    echo "SSH Port of $output is up." 
    else
    echo "Server $output is not able to connect."
    fi
done

