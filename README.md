# rsync-watcher
Synchronize your local directory with remote server directory in realtime.

### Install
```bash
sudo ./install.sh
```
then restart terminal

### Usage
```bash
# Locally
rsync-watcher /path/to/source/directory /path/to/destination

# Destination on remote server
rsync-watcher /path/to/source/directory username@remote_host:/destination/directory
```
