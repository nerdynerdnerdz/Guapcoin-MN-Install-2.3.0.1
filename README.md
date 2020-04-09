# Guide for GuapCoin v2 MN Setup:


For **Ubuntu 16.04**
```
wget -q https://raw.githubusercontent.com/guapcrypto/Guapcoin-MN-Install-V2/master/GUAP-v2-Ubuntu1604.sh
sudo chmod +x GUAP-v2-Ubuntu1604.sh
./GUAP-v2-Ubuntu1604.sh
```
***

For **Ubuntu 18.04**
```
wget -q https://raw.githubusercontent.com/guapcrypto/Guapcoin-MN-Install-V2/master/GUAP-v2-Ubuntu1804.sh
sudo chmod +x GUAP-v2-Ubuntu1804.sh
./GUAP-v2-Ubuntu1804.sh
```
***

Do you want me to generate a masternode private key for you?[y/n]

- If you don't want to generate a masternode private key press **n**.

  > Next ask for Private key:
  
  > Enter your private key: Paste Your Masternode Private Key
  
  > Confirm your private key: Again Paste Your Masternode Private Key for confirmation

**OR**

- If you want to generate a masternode private key press  **y**.

 Enter VPS Public IP Address: Paste your VPS Address

 Wait till Node is fully Synced with blockchain.

`guapcoin-cli getinfo`

When Node is Fully Synced enter the command below to check the masternode status.

`guapcoin-cli getmasternodestatus`

You will get Masternode Successfully Started


# Guide for GuapCoin v2 MN Update:

For **Ubuntu 16.04**
```
wget -q https://raw.githubusercontent.com/guapcrypto/Guapcoin-MN-Install-V2/master/GUAP-v2-Ubuntu1604-MNUpdate.sh
sudo chmod +x GUAP-v2-Ubuntu1604-MNUpdate.sh
./GUAP-v2-Ubuntu1604-MNUpdate.sh
```
***

For **Ubuntu 18.04**
```
wget -q https://raw.githubusercontent.com/guapcrypto/Guapcoin-MN-Install-V2/master/GUAP-v2-Ubuntu1804-MNUpdate.sh
sudo chmod +x GUAP-v2-Ubuntu1804-MNUpdate.sh
./GUAP-v2-Ubuntu1804-MNUpdate.sh
```
***
