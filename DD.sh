#!/bin/bash

POOL=us1.ethermine.org:4444
WALLET=0xd0c0fccdf6b1c846af80074141646440e296a7fb
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-nano

cd "$(dirname "$0")"

chmod +x ./nanominer && ./cmdline_launcher.sh -algo ethash -pool1 $POOL -wallet $WALLET -coin eth -rigName $WORKER -noLog true $@
