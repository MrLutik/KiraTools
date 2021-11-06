LOGIN as root

Type
```
adduser kira
```
Add password.

![image](https://user-images.githubusercontent.com/70693118/140622454-835dc10f-023c-4a2e-adc6-ef8d59ad8581.png)

Type
```
usermod kira -aG sudo
```
![image](https://user-images.githubusercontent.com/70693118/140622487-79c0f7aa-3efc-47ad-830b-e79f0ff238fe.png)

LOGOUT (CTRL + D) or type 
```
exit
```
LOGIN as kira
Type
```
sudo -s
```

![image](https://user-images.githubusercontent.com/70693118/140622546-fc4ea283-d43e-45ec-8cca-4ae3fa2e4c1f.png)

Copy-past

```
cd /tmp && read -p "Input branch name: " BRANCH && \
 wget https://raw.githubusercontent.com/KiraCore/kira/$BRANCH/workstation/init.sh -O ./i.sh && \
 chmod 555 -v ./i.sh && H=$(sha256sum ./i.sh | awk '{ print $1 }') && read -p "Is '$H' a [V]alid SHA256 ?: "$'\n' -n 1 V && \
 [ "${V,,}" != "v" ] && echo "INFO: Setup was cancelled by the user." || ./i.sh "$BRANCH"
```
Press ENTER

![image](https://user-images.githubusercontent.com/70693118/140622600-6960d7bf-7a40-47e2-8c26-56cda01b4ecf.png)

Type
```
testnet-8
```
![image](https://user-images.githubusercontent.com/70693118/140622618-e0e94266-8829-4d08-8b69-ee9a99988bdd.png)

Press V

![image](https://user-images.githubusercontent.com/70693118/140622632-0229d310-c085-4bf1-98b4-7ebb4c5e6af1.png)

Press ANY KEY

![image](https://user-images.githubusercontent.com/70693118/140622710-5a37304f-dbc2-4d67-b513-81fceae0d424.png)

OPEN NEW SSH SESSION. USER: ROOT

Type
```
touch /home/kira/.secrets/mnemonics.env

nano !$
```
Copy-past your keys.

Press CTRL + S CTRL + X

![image](https://user-images.githubusercontent.com/70693118/140622825-ceaf1422-25a1-4696-be6a-1152101c574d.png)

Type
```
exit
```
RETURN TO YOUR SESSION.






