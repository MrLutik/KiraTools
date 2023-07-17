# chaosnet-1 
## Step by step guide to join the testnet
### 1. SSH to your host and create a user

```
adduser kira
```

### 2. Make your user sudo
```
usermod -aG sudo kira
```

### 3. Login as kira

```
su kira
```

### 4. Enter sudo shell

```
sudo -s
```

### 5. Paste the installation script, type *release version and press enter.

![image](https://github.com/MrLutik/KiraTools/assets/70693118/8f655990-18b6-436d-9c2c-2d69d6f93eea)

*Latest release version can be found [here](https://github.com/KiraCore/kira)

![image](https://github.com/MrLutik/KiraTools/assets/70693118/6c998570-ccfa-43e2-b9a6-309af768aadb)

### 5. Confirm agreement, pressing `y`

![image](https://github.com/MrLutik/KiraTools/assets/70693118/7d0c2c30-a77a-4b7a-8d53-a21b892e0625)

### 6.  Initial configuration

![image](https://github.com/MrLutik/KiraTools/assets/70693118/64d426c5-216e-44a1-82ae-a3db11ad88e2)

#### 6.1 Start with mnemonic
As of now mnemonic mechanic changed. Every address and signature derives from `MASTER MNEMONIC`. Use you validator mnemonic. And **don't worry that your address wouldn't match**.

**Press `m`** -> **Press `m`** -> **Press `y`** and paste your mnemonic

![image](https://github.com/MrLutik/KiraTools/assets/70693118/4c352ba0-1a07-4ba3-898a-b8e3a24d96f8)


* You can skip this step and use new mnemonic which is randomly generated for you. Or use our [bip39gen](https://github.com/KiraCore/tools/tree/master/bip39gen) tool to generate robust mnemonic with user provided entropy(`TIP: use verbouse flag to see mechanic`). 

#### 6.2 Chnage your SSH Port if it's not default one
Very important step if you want still have access to your host. Change it to whatever is set in your `sshd_config`

**Press `n`** -> **Press `m`** and follow the procedure

* Skip if your ssh port is 22(default)

#### 6.3 The last step here. Choosing peers

**Press `a`**

![image](https://github.com/MrLutik/KiraTools/assets/70693118/76b146f5-483d-4d74-af64-651be0ed43b8)

Enter any peer you like from provided. Check chaosnet docs!

**Press `s`** to continue setup

#### 7. Setup in progress.

You can follow the process by pressing `v`

![image](https://github.com/MrLutik/KiraTools/assets/70693118/036d19c3-baa5-44d8-96a4-badef96e1c1f)

Reboot is ok. No worries
SSH to your server after reboot.
```
sudo -s
<type your paswd if any>
kira
```  

#### 8. Finishing installation

![image](https://github.com/MrLutik/KiraTools/assets/70693118/76d18faf-d841-4a8a-8b45-f8e433c57582)

Just follow the instruction.

![image](https://github.com/MrLutik/KiraTools/assets/70693118/4d0fec90-b0c5-46a2-b1a3-19aef15dff46)

#### 9. Joining validator set









