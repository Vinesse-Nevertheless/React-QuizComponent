#!/usr/bin/env bash

#Exercise 2 Logging

# Modify the previous script so that it uses a logging function.
# Additionally tag each syslog message with "randomly" and include the
# process ID. Generate 3 random numbers

logme()
{
   local rand=$RANDOM
   logger -i -t loggingfunction -s -p user.info $rand "randomly"   
}

for (( i=0; i < 3; i++ ))
do
  logme
done
