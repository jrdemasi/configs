#!/bin/bash

export BORG_PASSPHRASE="YOURPASSPHRASEHERE"

declare -i j=0
MAX_TRIES=3

for (( j = 0 ; j < ${MAX_TRIES} ; j++ ))  
    do
	ping -c 1 YOURHOSTNAME.YOUR.TLD
        if [[ "${?}" == '0' ]] ; then # connection success, so we continue.
            break
        else
            sleep 15 
        fi
    done

if [[ "${j}" == '3' ]]; then
   echo "No reliable connection, exiting!"
   exit 1
fi 

echo "Creating a new archive..." >> /root/logs/borg.log
borg create --compression=lzma,9 --progress ssh://SSHUSER@YOURHOSTNAME:2222/home/SSHUSER/YOURUSER::YOURUSER-{now:%Y%m%d} /home/YOURUSER --exclude '/home/YOURUSER/.cache' >> /root/logs/borg.log 2>&1

echo "Pruning archives..." >> /root/logs/borg.log
borg prune -v --list --keep-daily=7 --keep-weekly=4 --keep-monthly=6 ssh://SSHUSER@YOURHOSTNAME:2222/home/SSHUSER/YOURUSER >> /root/logs/borg.log 2>&1
