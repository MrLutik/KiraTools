Press I

![image](https://user-images.githubusercontent.com/70693118/139245238-214892da-4638-43a5-886a-acab2042b3d5.png)

Press Y

![image](https://user-images.githubusercontent.com/70693118/139245360-aedb3187-c59f-4d41-8469-e089134459d8.png)

Press Y

![image](https://user-images.githubusercontent.com/70693118/139245622-86410459-daf5-4dd1-b876-98015f30749d.png)

Press C

![image](https://user-images.githubusercontent.com/70693118/139245720-ef8f2044-93d1-49be-8b3a-2cdd529059d3.png)

Input:
```
testnet-7
```
Press ENTER

![image](https://user-images.githubusercontent.com/70693118/139245863-8a520221-2073-4ecc-9109-781c560f5555.png)

Please check the KM checksum. Should be as follow:
```
0feca1c125f2291596dd115ff2cf720032a7098030f8aa97c164afa9ca79644e
```

Press C

![image](https://user-images.githubusercontent.com/70693118/139247381-400c0ff0-cb70-4e4c-9ace-0da1733c9f51.png)

Press ANY KEY

![image](https://user-images.githubusercontent.com/70693118/139247650-d4e90596-28b1-4f10-a82b-b5771cbbf6c1.png)

Press C

![image](https://user-images.githubusercontent.com/70693118/139247745-70d6c9cf-6aa9-475a-a111-a733bd4d5e5c.png)

Press ANY KEY

![image](https://user-images.githubusercontent.com/70693118/139248130-102fd373-4f9c-4ff9-bdd5-cd22dcbc04fa.png)

Press J

![image](https://user-images.githubusercontent.com/70693118/139248190-6ef67814-79e1-4147-97ee-06e9d88bc5f2.png)

Please make sure that all branches set properly.

Press S

![image](https://user-images.githubusercontent.com/70693118/139248513-82c5ce94-0662-4c73-8ff5-66c26a77201f.png)

Input: ip (example: 127.0.0.0)
Source:
```
https://testnet-rpc.kira.network/download/peers.txt
```
Press A

![image](https://user-images.githubusercontent.com/70693118/139249078-424847c1-58f0-41f6-a048-b65e66f3b508.png)

Press ENTER

![image](https://user-images.githubusercontent.com/70693118/139249254-aa55580e-824c-429e-9bbf-a69b7ac18055.png)

Check the marked fields.

Genesis checksum
```
0x3c7d72740fbd6f840e9757feaa81a3575cabbdb0a213c1e2c1e30913b8771274
```
If everything correct - proceed.
Press A

![image](https://user-images.githubusercontent.com/70693118/139249790-88eb99f8-fb61-4325-b710-9f05d471dcdc.png)

Press A

![image](https://user-images.githubusercontent.com/70693118/139249970-98e3a2fd-70ea-4139-9dd4-d5b524d47b61.png)

Propoer output looks like this:
![image](https://user-images.githubusercontent.com/70693118/139250072-d0399ea7-c040-4f25-823c-f2e6712abd7d.png)

Your host will reboot.
![image](https://user-images.githubusercontent.com/70693118/139250252-70768e0d-6e57-4a9b-a7e8-fd01ff096ad7.png)

### LOG IN as user(example: ssh kira@172.0.0.1)

Input:
```
sudo -s
kira
```
Press ENTER

![image](https://user-images.githubusercontent.com/70693118/139250545-1cce41d8-c6d4-4aa4-be54-1e8c3e5e6cc9.png)

Press V

![image](https://user-images.githubusercontent.com/70693118/139250696-b6345bf0-3489-4ef5-9091-5b2054af5db2.png)

Press CTRL + C

![image](https://user-images.githubusercontent.com/70693118/139253255-896de80a-2595-4347-87e1-277dbf3d7278.png)

Before start kira again you need to check state file.
Input:
```
docker exec -it validator cat /root/.sekaid/data/priv_validator_state.json
```
![image](https://user-images.githubusercontent.com/70693118/139253672-28e812d2-1cec-42f5-b129-c9620fea138d.png)

## IF you have here 234887 or 234887
please execute following commands:
```
docker exec -it validator nano /root/.sekaid/data/priv_validator_state.json

globSet MIN_HEIGHT 12000 $GLOBAL_COMMON_RO
globSet MIN_HEIGHT 12000
globSet latest_block_height 12000

```
![image](https://user-images.githubusercontent.com/70693118/139253948-d8fff480-88a2-404f-a96d-11b1fa5d80b0.png)

Input:
```
docker exec -it validator cat /root/.sekaid/data/priv_validator_state.json
```
Check. If not successful - try manully edit this file
```
docker exec -it validator nano /root/.sekaid/data/priv_validator_state.json
```
![image](https://user-images.githubusercontent.com/70693118/139254344-08949714-99e9-4f2b-84b2-21aa77019b73.png)
Press CTRL + S CTRL + X

Input:
```
kira
```
Press 1

![image](https://user-images.githubusercontent.com/70693118/139257570-0541c07a-1a8d-44de-ad25-8e7956f8d739.png)

Press R

![image](https://user-images.githubusercontent.com/70693118/139257650-1916e7b4-4bb4-4383-891a-fd707bd15bb3.png)


![image](https://user-images.githubusercontent.com/70693118/139254689-88e61d74-7cbc-4294-8c09-e3d50a456647.png)

Press J

![image](https://user-images.githubusercontent.com/70693118/139255191-1bb9e3d0-119b-4924-841f-8f9a7adca096.png)









