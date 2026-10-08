#!/bin/sh
# /files is an alias of /home/ without a trailing slash: its listing shows help.txt.
set -e
curl -fsS http://nginx:8081/files/ | grep -q 'help.txt'
