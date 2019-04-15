#!/bin/bash
set -e
cd /home/${USER}/
borg serve --restrict-to-path /home/${USER}/

