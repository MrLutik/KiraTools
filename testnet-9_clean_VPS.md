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

![image](https://user-images.githubusercontent.com/70693118/148641646-d4863680-4ae2-43ca-9317-1f961b531289.png)


![image](https://user-images.githubusercontent.com/70693118/148641664-30b5d10c-eb92-4529-8be6-edbf70b4aaee.png)









