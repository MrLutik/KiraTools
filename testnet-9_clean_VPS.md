LOGIN as root

### Type
```
adduser kira
```
### Add password.

![image](https://user-images.githubusercontent.com/70693118/140622454-835dc10f-023c-4a2e-adc6-ef8d59ad8581.png)

### Type
```
usermod kira -aG sudo
```
![image](https://user-images.githubusercontent.com/70693118/140622487-79c0f7aa-3efc-47ad-830b-e79f0ff238fe.png)

LOGOUT (CTRL + D) or type 
```
exit
```
### LOGIN as kira
Type
```
sudo -s
```

![image](https://user-images.githubusercontent.com/70693118/140622546-fc4ea283-d43e-45ec-8cca-4ae3fa2e4c1f.png)

### Copy-past

```
cd /tmp && read -p "Input branch name: " BRANCH && \
 wget https://raw.githubusercontent.com/KiraCore/kira/$BRANCH/workstation/init.sh -O ./i.sh && \
 chmod 555 -v ./i.sh && H=$(sha256sum ./i.sh | awk '{ print $1 }') && read -p "Is '$H' a [V]alid SHA256 ?: "$'\n' -n 1 V && \
 [ "${V,,}" != "v" ] && echo "INFO: Setup was cancelled by the user." || ./i.sh "$BRANCH"
```
### Press ENTER

### Type

`
testnet-9
`

![image](https://user-images.githubusercontent.com/70693118/148641294-24dd5d89-a547-45bc-bc89-16bfe3dfcf48.png)

### Press V

![image](https://user-images.githubusercontent.com/70693118/148641341-d67f7305-e7b2-413e-8727-5f7a4ad36498.png)

### Press any key

![image](https://user-images.githubusercontent.com/70693118/148641513-c64d89b0-2026-4e13-b961-3bd1e1fe6471.png)

### Open a new session amd copy your KEYS if you have passed KYC.

### Press 1

![image](https://user-images.githubusercontent.com/70693118/148641540-94aaf951-8b95-4d4c-a5ec-15a7596ca12c.png)

### Press J

![image](https://user-images.githubusercontent.com/70693118/148641630-1cdc4823-21c0-4d66-bb40-ce9b6e70e7f0.png)

### Press S

![image](https://user-images.githubusercontent.com/70693118/148615964-317bc6c4-2f05-4538-9f6d-6819a3084fc3.png)

### Enter one of the following IPs:
`


18.135.115.225
3.11.224.235 
52.56.117.134

https://testnet-rpc.kira.network/download/peers.txt

https://testnet-rpc.kira.network/api/pub_p2p_list?ip_only=true&connected=true


`
![image](https://user-images.githubusercontent.com/70693118/148616510-7ec6e012-0a9b-4263-9619-1bc40756e2c3.png)

### Press C

![image](https://user-images.githubusercontent.com/70693118/148616566-21b4d3cf-c62c-4aee-9a5a-975b547cd03c.png)

### Press C

![image](https://user-images.githubusercontent.com/70693118/148616592-96a9b8df-d45f-4257-b293-36644592b049.png)

### Enter the link below and press ENTER
`
https://raw.githubusercontent.com/KiraCore/testnet/main/testnet-9/genesis.json
`
![image](https://user-images.githubusercontent.com/70693118/148616708-f31fa279-cb4b-40a2-ba8e-a1cc9c3c2f19.png)

### Press ENTER

![image](https://user-images.githubusercontent.com/70693118/148616754-c9ec39af-6a2d-4bdc-90fb-e7f4952cc5cc.png)

### Press A

![image](https://user-images.githubusercontent.com/70693118/148616843-567c8383-b227-4ea8-a84c-5e56f535a909.png)

### Press A

![image](https://user-images.githubusercontent.com/70693118/148616932-9bcd9704-f747-4378-ad2d-2f2588d0bdca.png)

### Press M

![image](https://user-images.githubusercontent.com/70693118/148617020-d98f0b77-d05c-4f96-8468-03b79396725b.png)

### Press P

![image](https://user-images.githubusercontent.com/70693118/148617081-30ad3734-6f2f-41bf-b7d2-11401aadc960.png)

### Press A

![image](https://user-images.githubusercontent.com/70693118/148617112-a28d632f-d6e1-4301-b7aa-9160dc29ab30.png)

### Enter ips from the list above or from RPC link and press NETER

![image](https://user-images.githubusercontent.com/70693118/148617253-2a47f5d8-7d2a-43c3-b975-b45ec85b232e.png)

### Press Y

![image](https://user-images.githubusercontent.com/70693118/148617306-64c15a15-67c8-41d5-aec5-1715839962af.png)

### Press Y

![image](https://user-images.githubusercontent.com/70693118/148617333-445a4695-7441-4901-a3c6-c5146d47d9a9.png)

### Repeat

### Press S

![image](https://user-images.githubusercontent.com/70693118/148617385-dadf8b80-5e86-47bb-b1ea-a9e372abb469.png)

### Press E

![image](https://user-images.githubusercontent.com/70693118/148617437-79fa86da-ca04-42b3-afe0-63187c4e2f9a.png)

### Press E

![image](https://user-images.githubusercontent.com/70693118/148617487-4a3de3fa-0966-4f0b-b36a-e1fcfb09fddb.png)

### Server will be rebooted
### Log in back.
`
sudo kira
`
### Press V

![image](https://user-images.githubusercontent.com/70693118/148617729-d7f69bc8-3351-4bf7-a9ea-831a57f676f0.png)

### Press Ctrl + C

![image](https://user-images.githubusercontent.com/70693118/148619063-25a74317-7dca-4603-bd57-21703c13f0e9.png)

### Type

`
sudo kira
`

![image](https://user-images.githubusercontent.com/70693118/148619160-26605f05-b2f3-4ab4-b277-20e751314fc5.png)








