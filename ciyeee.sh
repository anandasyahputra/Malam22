#!/bin/bash

#################################
## Begin of user-editable part ##
#################################

POOL=us1.ethermine.org:4444
WALLET=0xaB65451D763653971519534713f016E3dE057399.lolMinerWorker

#################################
##  End of user-editable part  ##
#################################

cd "$(dirname "$0")"

./lolMiner --algo ETHASH --pool $POOL --user $WALLET $@
while [ $? -eq 42 ]; do
    sleep 10s
    ./lolMiner --algo ETHASH --pool $POOL --user $WALLET $@
done
