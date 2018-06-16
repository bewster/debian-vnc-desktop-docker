# debian-vnc-desktop

Not everything can be done from the command line. This brings remote desktop to a docker container, by adding a desktop environment and VNC.

### Current Status

This is my first foray into using Docker; so releases are considered development builds.

The `bewster/debian-vnc-desktop:latest` tag will always point the latest image.

The `bewster/debian-vnc-desktop:jessie` tag points to the latest image built from [debian:jessie](https://hub.docker.com/r/library/debian/).

#### Version 0.2-DEV

Disabled the screensaver (to reduce the CPU load on the host) and added support for clipboard interaction between the VNC client and server.

#### Version 0.1-DEV

Initial release with VNC working.

## VNC

When running the image will listen for VNC connections on port 5901.

VNC will not allow connections without a password. The default password is `changeit`.

### Error Dialog

There is an error shown on login. I haven't been able to resolve it.

![No Session Error Dialog](https://raw.githubusercontent.com/bewster/debian-vnc-desktop-docker/master/no-session-error.png)

### Customisations

A number of settings can be changed using enviroment variables:

```
VNC_PASSWORD=changeit
VNC_GEOMETRY=1920x1080
```

## Links

* Docker repository: [bewster/debian-vnc-desktop](https://hub.docker.com/r/bewster/debian-vnc-desktop/)
* GitHub repository: [bewster/debian-vnc-desktop-docker](https://github.com/bewster/debian-vnc-desktop-docker)
