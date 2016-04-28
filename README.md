# dockerfiles
Contains dockerfiles including

## sametime OSX
fedora version of sametime, runnable from mac by starting socat for GUI, then building normally:
```sh
$ socat TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"$DISPLAY\"
$ docker build -t sametime -f Dockerfile . 
```

next find your container ip address with ifconfig, in my case it's 192.168.99.1, then run as such
```sh
$ docker run -e DISPLAY=192.168.99.1:0 --privileged --name sametime -it --rm sametime
```

## sametime linux

```sh
$ docker build -t sametime -f Dockerfile .
$ docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix --privileged -it --rm sametime
```

