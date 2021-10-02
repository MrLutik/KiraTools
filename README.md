# [SCRIPTS] 

## status.sh - Get all validator stats by IP address
```
chmod +x ./status.sh
```
### Example:
```
./status.sh 255.255.255.0
```
# [COMMANDS]

### Deleting snaps
```
( find / -name *snap*.zip -type f -print0 && find / -name *testnet*.zip -type f -print0 ) 2>/dev/null | xargs -0 rm
```
