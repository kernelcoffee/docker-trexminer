#!/bin/bash
cd "$(dirname "$0")"

echo $SERVER
echo $ETH_ADDRESS
echo $WORKER_NAME
echo $INTENSITY

nvidia-smi

/root/t-rex -a ethash -o stratum+tcp://$SERVER -u $ETH_ADDRESS -p x -w $WORKER_NAME -i $INTENSITY

