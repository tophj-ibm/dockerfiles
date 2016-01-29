# dockerfiles
Contains dockerfiles including

# __Sametime no longer works due to support being withdrawn from fedora. Currently looking for alternate package

## sametime
fedora version of sametime, runnable from mac by starting socat for GUI, then building normally:
```sh
$ socat TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"$DISPLAY\"
$ docker build -t sametime -f Dockerfile . 
```

next find your container ip address with ifconfig, in my case it's 192.168.99.1, then run as such
```sh
$ docker run -e DISPLAY=192.168.99.1:0 --privileged --name sametime -it --rm sametime
```
