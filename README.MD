#Raspberry Pi Live Camera

## Auto start push

```
sudo vim /etc/rc.local

#Start push stream to remote server
printf "Start push stream to remote serve......."
sh /home/pi/live-camera/run.sh
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

```
ssh pi@192.168.200.72
```

# Articles
http://www.slickstreamer.info/2013/06/use-raspberrypi-csi-camera-module-to.html