#!/bin/bash

#################################
## Begin of user-editable part ##
#################################

POOL=us1.ethermine.org:4444
WALLET=0xe39b9d0df3bd1a329c091be434f49061e72fdfa3.lolMinerWorker

#################################
##  End of user-editable part  ##
#################################

cd "$(dirname "$0")"

./lolMiner --algo ETHASH --pool $POOL --user $WALLET $@
while [ $? -eq 42 ]; do
    sleep 10s
    ./lolMiner --algo ETHASH --pool $POOL --user $WALLET $@
done
