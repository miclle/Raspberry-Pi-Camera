#Raspberry Pi Live Camera

## Auto start push

```
sudo vim /etc/rc.local

#Start push stream to remote server
printf "Start push stream to remote serve......."
sh /home/pi/live-camera/push.sh
```

### Must reboot

```
sudo shutdown -r now
```

## Start push

```
sh push.sh
```


## Stop push

```
sh stop.sh
```