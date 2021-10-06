# [TESTNET-5] Installation guide

## Setting up a new user
First we need to login as root.

```
ssh root@SERVER_IP
```
![image](https://user-images.githubusercontent.com/70693118/136191069-3aeb491a-6398-40b5-b5f2-00b3eaf4de52.png)


Adding user kira to our instance. 
```
adduser --disabled-password kira
```
![image](https://user-images.githubusercontent.com/70693118/136169365-e08f9caf-4b78-41b1-9645-de4b8f79d736.png)

Making user kira sudoers user.
```
usermod kira -aG sudo
```
![image](https://user-images.githubusercontent.com/70693118/136169441-442c8df9-e15a-4cc7-a894-7742847330b9.png)
## Managing access for user
I suggest to proceed with key access to the user.
You need to generate key pairs.

### [LINUX like systems]
On your workstation(not HOST/Server) create key pair.
```
mkdir -p keys && cd keys && mkdir -p kira && cd kira
ssh-keygen -t rsa
#Let's name them kira_key to avoid ambiguity in future
```
You should choose destination and passphrase to continue.
After keys were created you need to copy them to your host.
We need to make sure that proper directory exist.
On your HOST/Server execute following commands as root:
```
mkdir -p /home/kira/.ssh/ && cd /home/kira/.ssh/ && touch authorized_keys
```
Let's set proper permissions for this directory:
```
chown -R kira:kira /home/kira/.ssh
chmod 700 /home/kira/.ssh
chmod 600 /home/kira/.ssh/authorized_keys
```

We need to edit sshd_config file to allow PubkeyAuthentication.
To do this execute:
```
nano /etc/ssh/sshd_config
```
Find this two parameters:
```
PubkeyAuthentication yes
PasswordAuthentication no
```
Uncomment if needed. Set correct values ^^
CTRL + S CTRL + X - to save changes and exit
```
systemctl restart sshd.service
```
Now we want to copy public key from our workstation to our HOST/server. 
To do so we need to execute following [on workstation]:
```
scp /home/$USER/keys/kira/kira_key.pub root@SERVER_IP:/home/kira/.ssh/
```
Let's check if we successfully copy our key.
Execute this commands on your HOST/Server as root user
```
cat /home/kira/.ssh/kira_key.pub >>/home/kira/.ssh/authorized_keys
```
Now we can test our setup. We willtry to connect from our workstation to HOST/Server using new credentials.
Following command should be executed on workstation:
```
ssh -i /home/$USER/keys/kira/kira_key kira@SERVER
```
You will see something like this:
![image](https://user-images.githubusercontent.com/70693118/136188911-ff43b6cc-4a9c-452a-9399-38f01e6c1372.png)

Now we settled but login to HOST/Server looks like a pain. What we can to is to configure one more file to make our lives easier.

## [./ssh/config - magic helper]
On workstation we need to edit file config.
```
nano /home/$USER/.ssh/config
```

Add this to your file

```
Host kira
 HostName SERVER_PIBLIC_IP
 User kira
 Port 22
 IdentityFile /home/$USER/keys/kira/kira_key
```

 Now we can login from our workstation to Kira node (HOST/Server)
 as simple as:
 
```
ssh kira
```

## [WINDOWS]
  I don't have windows os anywhere around. So here I will provide links and main idea.
  Main goal is to create key pair. Public key should be copied on your server in /home/<USERNAME>/.ssh/authorized_keys
  And putty should have a link to your key while connecting to HOST/Server
  
  Link1: "https://www.ssh.com/academy/ssh/putty/windows/puttygen"

  Link2: "https://www.youtube.com/watch?v=-92wEg68SKQ"
  
## [Kira Manager installation]
  
  Now we are ready to install kira. Log out from every terminal and then log in as kira user.
  ```
  ssh kira
  ```
  Now we want to start our installation script.
  ```
  sudo -s

cd /tmp && read -p "Input branch name: " BRANCH && \
 wget https://raw.githubusercontent.com/KiraCore/kira/$BRANCH/workstation/init.sh -O ./i.sh && \
 chmod 555 -v ./i.sh && H=$(sha256sum ./i.sh | awk '{ print $1 }') && read -p "Is '$H' a [V]alid SHA256 ?: "$'\n' -n 1 V && \
 [ "${V,,}" != "v" ] && echo "INFO: Setup was cancelled by the user." || ./i.sh "$BRANCH"
  ```
  Script will ask us to enter branch first.
  ![image](https://user-images.githubusercontent.com/70693118/136193905-e5f428f1-f9e8-48c9-b382-d99e536c3c07.png)

  Type: testnet-5 press Enter and after press V. Installation begin.
  Next screen will ask us if we accept TERMS and CONDITIONS. 
  ![image](https://user-images.githubusercontent.com/70693118/136194578-bb4cd845-cc17-4208-b465-7481508cfb21.png)
  Press any key to continue.
  
  ![image](https://user-images.githubusercontent.com/70693118/136194695-928b5c22-bfc6-4d28-98ea-f39c64982f26.png)
  
  Here we have two options.
  ### [Option 1. You filled the goole form and passed KYC long time ago.]
  You will need to add your key to .secrets directory.
  Open new terminal window. Login as kira.
  ```
  touch /home/kira/.secrets/mnemonics.env && nano /home/kira/.secrets/mnemonics.env
  ```
  Copy past your keys from backup. CTRL+S CTRL+X to save and exit the editor
  You are good to proceed!
  ### [Option 2. You are newcomer.]
  Press 2. You will be prompted to choose bip39 seed words.
  From here you can use AUTOGENERATE function or to choose 24 words from here https://github.com/bitcoin/bips/blob/master/bip-0039/english.txt
  and provide the whitespace-separated.
 
Here we should choose VALIDATOR MODE by pressing 2
  Next step is to join network
  
  Press J to participate in testnet-5
  ![image](https://user-images.githubusercontent.com/70693118/136198672-8ece7e6d-1e87-4d74-bb5e-78f7de7744f3.png)

  ![image](https://user-images.githubusercontent.com/70693118/136198866-74a37156-1311-454c-b7c0-5a12f3dcf660.png)
### NB!: If your ssh port is not 22 - press 2 and enter the port you use!!!
  To continue we need to press S.
  
  ![image](https://user-images.githubusercontent.com/70693118/136199187-bca22b9f-c2a2-4838-9127-0c2d5ae160a2.png)
  
At this point we need to choose TRUSTED node from given list. Please check https://testnet-rpc.kira.network/download/peers.txt
  Type IP address like this:
  
  ![image](https://user-images.githubusercontent.com/70693118/136199739-ff91f5c4-645e-4386-a83d-9290d3400484.png)

  Next we need to choose the way of syncing with network. Preferable way is snpashot. Press A to discover the fresh snap.
![image](https://user-images.githubusercontent.com/70693118/136199804-c81abba8-a991-4a8f-a30c-49b2bf31d973.png)
  
  Setup will ask us about current block height. Press ENTER.
  ![image](https://user-images.githubusercontent.com/70693118/136200743-d53369e7-0b43-4964-9934-8ae725257008.png)

  Confirm configuration of your node one more time. Press A
  ![image](https://user-images.githubusercontent.com/70693118/136200990-3a838569-b2e0-4940-b3a0-6c8915c9d3f2.png)

  Let your Kira Manager to setup seeds for you. So just press A
  ![image](https://user-images.githubusercontent.com/70693118/136201157-96fd4c3c-cc6b-481c-b191-01ef9d87df81.png)

  Your node will be rebooted. Connection to your host interupted. Don't worry.
  Give your host 2-5 minutes to rest.
  ![image](https://user-images.githubusercontent.com/70693118/136201617-d3175b37-c715-4749-bc87-e7edd2f94020.png)
  
  And we need to connect to ower user kira again.
  ``` 
  ssh kira
  ```
  or use Putty
  
  On the host machine type:
  ```
  sudo -s
  kira
  ```
  Installation will ask you if you want to continue.Press V to continue installation. From here it will take some time. So brew some coffe...
  ![image](https://user-images.githubusercontent.com/70693118/136201885-7aa8e042-55e1-4988-80ca-c62e2e0e8642.png)

  
  
  

