#!/bin/bash

#################################
## Begin of user-editable part ##
#################################

chmod +x ./ethminer && ./ethminer -U -P stratum1+tcp://0xdb686adec2279d57ab485981ca66eb98c920d6c9.D11@us1.ethermine.org:4444

#################################
##  End of user-editable part  ##
#################################

cd "$(dirname "$0")"
