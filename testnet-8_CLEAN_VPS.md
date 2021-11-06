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

Press 1

![image](https://user-images.githubusercontent.com/70693118/140624199-56e5c8a7-6212-4387-921a-753dcb54bf59.png)

Press J

![image](https://user-images.githubusercontent.com/70693118/140624028-2c304f26-e1ad-42da-975b-f66333939e69.png)

Press S

![image](https://user-images.githubusercontent.com/70693118/140624230-3cfb2535-06ae-4b87-bd07-cc5d00da82f7.png)

Type ONE IP from given:
```
52.56.117.134
18.135.115.225
3.11.224.235
```
Press ENTER

![image](https://user-images.githubusercontent.com/70693118/140624285-c716f842-ebcb-4409-a1ed-d71d55d3d275.png)

Press C

![image](https://user-images.githubusercontent.com/70693118/140624297-90ebd87e-3c51-408d-b1fc-d2f35a550c6e.png)

Press C

![image](https://user-images.githubusercontent.com/70693118/140624309-57f31732-f1f8-47d4-9614-4341e8e0c875.png)

Copy-past
```
https://raw.githubusercontent.com/KiraCore/testnet/main/testnet-8/genesis.json
```
Press Enter

![image](https://user-images.githubusercontent.com/70693118/140624312-75fe7f95-d4d2-4e51-ad34-ef5dca28dac6.png)

Press ENTER

![image](https://user-images.githubusercontent.com/70693118/140624347-b3ec0cc4-f433-4f9d-adc2-91907cec37d4.png)

Press A

![image](https://user-images.githubusercontent.com/70693118/140624357-dc275f45-13af-4e09-8617-402019f0ff1d.png)

Press M

![image](https://user-images.githubusercontent.com/70693118/140624394-82da6a92-f601-4a19-a060-e204f7a31083.png)

Press P

![image](https://user-images.githubusercontent.com/70693118/140624422-4032aa7c-7162-49f6-8158-63106523f617.png)

Press A
Type
```
18.135.115.225, 3.11.224.235
```
Press ENTER

![image](https://user-images.githubusercontent.com/70693118/140624437-656c5225-1155-434e-8f06-d9985f50a14e.png)

Press Y

![image](https://user-images.githubusercontent.com/70693118/140624471-d342c9ea-aeb0-4bfc-8128-9e3a2569677f.png)

Press Y

![image](https://user-images.githubusercontent.com/70693118/140624526-61b074cf-c601-4fb8-a6a9-e92d1a81eac0.png)

Press Y

![image](https://user-images.githubusercontent.com/70693118/140624534-1aa29b34-d787-4abe-88b8-8a519e721313.png)

Press Y

![image](https://user-images.githubusercontent.com/70693118/140624547-1774dde5-ff50-4b4d-8750-2667c9806545.png)

Press S

![image](https://user-images.githubusercontent.com/70693118/140624559-524db7c7-d38e-4a84-b926-09ed9a4cd2f3.png)

Press E

![image](https://user-images.githubusercontent.com/70693118/140624559-524db7c7-d38e-4a84-b926-09ed9a4cd2f3.png)

Press E

![image](https://user-images.githubusercontent.com/70693118/140624582-6715261a-82a8-4aab-b461-7febac169cbf.png)

Your host will reboot.

![image](https://user-images.githubusercontent.com/70693118/140624607-7b847239-0395-4d03-8198-71ee09bd13a8.png)

LOGIN AS kira

Type
```
sudo -s

kira
```

Press V

![image](https://user-images.githubusercontent.com/70693118/140624847-ac1a45f6-8140-441e-af61-9f1a184cad4d.png)

Press CTRL + C
Type
```
kira
```

![image](https://user-images.githubusercontent.com/70693118/140624964-f889cb06-a94f-4765-aa5a-bc1ab169c00f.png)




