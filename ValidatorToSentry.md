![image](https://user-images.githubusercontent.com/70693118/141280089-999ba63f-f96e-403c-a079-e72fac6852e5.png)

Here I have two instances.

Validator:  L.IP: 172.31.12.127     P.IP: 3.8.220.108
Sentry:     L.IP: 172.31.5.169      P.IP: 3.9.22.158

Both share the same network interface.

PING: Validator -> Sentry

![image](https://user-images.githubusercontent.com/70693118/141280510-3f373b09-7714-4fa5-9e47-31bc2a268819.png)

```
docker exec -it validator netstat -nptw | grep -E '$(hostanme -I | awk "{print $1}")|26656|36656|56656' | grep ESTABLISHED
```
Validator outgoing traffic. All incoming traffic is blocked. 

![image](https://user-images.githubusercontent.com/70693118/141281109-710465d4-2eb5-44e9-ac6a-cf1ff27b1664.png)


```
docker exec -it validator netstat -nptw | grep -E '$(hostanme -I | awk "{print $1}")|26656|36656|56656' | grep ESTABLISHED
```
Sentry outgoing traffic. All incoming traffic is blocked.

![image](https://user-images.githubusercontent.com/70693118/141281682-de3324ba-6ca8-4bac-acf5-8e282d7c5468.png)


