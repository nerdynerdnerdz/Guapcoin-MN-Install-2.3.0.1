#/bin/bash

echo "Your GuapCoin Masternode Will be Updated To Latest Version Now" 
sudo apt-get -y install unzip
guapcoin-cli stop
systemctl stop guapcoin.service
sleep 10
rm -rf /usr/local/bin/guapcoin*
mkdir GUAP_2.3.0.1
cd GUAP_2.3.0.1
wget https://raw.githubusercontent.com/guapcrypto/Guapcoin-MN-Install-2.3.0.1/blob/master/Guapcoin-2.3.0.1-Daemon-Ubuntu.tar.gz
tar -xzvf Guapcoin-2.3.0.1-Daemon-Ubuntu.tar.gz
mv guapcoind /usr/local/bin/guapcoind
mv guapcoin-cli /usr/local/bin/guapcoin-cli
chmod +x /usr/local/bin/guapcoin*
rm -rf ~/.guapcoin/blocks
rm -rf ~/.guapcoin/chainstate
rm -rf ~/.guapcoin/sporks
rm -rf ~/.guapcoin/peers.dat
cd ~/.guapcoin/
wget http://45.63.25.141/bootstrap.tar.gz
tar -xzvf bootstrap.tar.gz

cd ..
rm -rf ~/.guapcoin/bootstrap.tar.gz ~/GUAP_2.3.0.1
systemctl start guapcoin.service
sleep 10
guapcoin-cli addnode 159.65.221.182 onetry
guapcoin-cli addnode 45.76.255.103 onetry
guapcoin-cli addnode 209.250.250.121 onetry
guapcoin-cli addnode 138.197.136.6 onetry
guapcoin-cli addnode 198.199.68.111 onetry
guapcoin-cli addnode 178.62.110.207 onetry
guapcoin-cli addnode 155.138.140.38 onetry
guapcoin-cli addnode 45.76.199.11 onetry
guapcoin-cli addnode 70.35.194.41 onetry
guapcoin-cli addnode 144.202.75.140 onetry
guapcoin-cli addnode 209.126.5.122 onetry
guapcoin-cli addnode 95.216.27.40 onetry

echo "Masternode Updated!"
echo "Please wait few minutes and start your Masternode again on your Local Wallet"
