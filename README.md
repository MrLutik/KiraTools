# [SCRIPTS] 

### status.sh - Get all validator stats by IP address
```
chmod +x ./status.sh
```
### Example:
```
./status.sh 255.255.255.0
```
### fnnetcheck.sh - FULL NODE only. Check all connections from all containers and host
```
chmod +x ./fnnetcheck.sh
./fnnetcheck.sh > netcheck.log
# This will help to investigate if your node has issues with peers
```
### mnnetcheck.sh - MINIMAL NODE only. ^^


# [COMMANDS]

### Deleting snapshots
```
( find / -name *snap*.zip -type f -print0 && find / -name *testnet*.zip -type f -print0 ) 2>/dev/null | xargs -0 rm
```
