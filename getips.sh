#!/bin/bash

ifconfig | grep  "inet " -B 1 | sed 's/:.*//g' | sed 's/netmask.*//g' | sed 's/\n*inet/: /g' | tr -d ' ' | tr '\n' ' ' | sed 's/ -- /\n/g' | replace ' :' ': '; echo
