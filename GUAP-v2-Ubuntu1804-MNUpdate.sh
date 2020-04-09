#/bin/bash

echo "Your GuapCoin Masternode Will be Updated To Latest Version Now" 
sudo apt-get -y install unzip
systemctl stop guapcoin.service
rm -rf /usr/local/bin/guapcoin*
mkdir GUAP_2.0
cd GUAP_2.0
wget https://github.com/guapcrypto/Guapcoin/releases/download/v2.0/Guapcoin-2.0-Daemon-Ubuntu_18.04.tar.gz
tar xzvf Guapcoin-2.0-Daemon-Ubuntu_18.04.tar.gz
mv guapcoind /usr/local/bin/guapcoind
mv guapcoin-cli /usr/local/bin/guapcoin-cli
chmod +x /usr/local/bin/guapcoin*
rm -rf ~/.guapcoin/blocks
rm -rf ~/.guapcoin/chainstate
rm -rf ~/.guapcoin/sporks
rm -rf ~/.guapcoin/peers.dat
cd ~/.guapcoin/
wget https://github.com/guapcrypto/Guapcoin/releases/download/v2.0/bootstrap.zip
unzip bootstrap.zip

cd ..
rm -rf ~/.guapcoin/bootstrap.zip ~/GUAP_2.0
systemctl start guapcoin.service
sleep 10
guapcoin-cli addnode 159.65.221.180 onetry
guapcoin-cli addnode 45.76.61.148 onetry
guapcoin-cli addnode 209.250.250.121 onetry
guapcoin-cli addnode 136.244.112.117 onetry
guapcoin-cli addnode 199.247.20.128 onetry
guapcoin-cli addnode 78.141.203.208 onetry
guapcoin-cli addnode 155.138.140.38 onetry
guapcoin-cli addnode 45.76.199.11 onetry
guapcoin-cli addnode 45.63.25.141 onetry
guapcoin-cli addnode 108.61.252.179 onetry
guapcoin-cli addnode 155.138.219.187 onetry
guapcoin-cli addnode 66.42.93.170 onetry

echo "Masternode Updated!"
echo "Please wait few minutes and start your Masternode again on your Local Wallet"