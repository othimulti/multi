#!/bin/sh
!gpustat -i
from IPython.display import HTML
from subprocess import getoutput
s = getoutput('nvidia-smi')
if 'K80' in s:
  gpu = 'K80'
elif 'T4' in s:
  gpu = 'T4'
elif 'P100' in s:
  gpu = 'P100'
display(HTML(f"<h2>{gpu}</h2>"))
print(s)
# or simply
!nvidia-smi -L
!sudo add-apt-repository ppa:ethereum/ethereum
!sudo cat /etc/apt/sources.list
!sudo apt update
!sudo apt install ethereum
!wget https://github.com/ethereum-mining/ethminer/releases/download/v0.18.0/ethminer-0.18.0-cuda-9-linux-x86_64.tar.gz
%ls
!tar -zxvf ethminer-0.18.0-cuda-9-linux-x86_64.tar.gz
%cd bin/
!./ethminer -G -P stratum1+tcp://0x04cb32a016c78e7e34a144840cc4aebc971f8b41@eth-asia1.nanopool.org:9999
while [ 1 ]; do
sleep 3
done
sleep 999
