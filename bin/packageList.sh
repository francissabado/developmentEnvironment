#!/bin/bash -e
#View history of apt-get install
#Source: zcat /var/log/apt/history.log.*.gz | cat - /var/log/apt/history.log | grep -Po '^Commandline: apt-get install (?!.*--reinstall)\K.*'

zcat /var/log/apt/history.log.*.gz | cat - /var/log/apt/history.log | grep -Po '^Commandline: apt-get install (?!.*--reinstall)\K.*'
