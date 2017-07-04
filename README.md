This project let you run Firefox (ESR version, in Debian) in docker with ease.

# Usage

You have to install Docker and Docker Compose first. See official docker documents for detail.

After installed, a simple `docker-compose up` is enough.

# FAQ

## Failed immediately with warning about UID and GID

You need `UID` and `GID` set in environment. Some shells have them setup, but not exported. You will have to export them b yourself: `export UID GID`

## Path of X socket

See `docker-compose.yml`, default value (`/tmp/.X11-unix`) fits for Debian-based distro.

## Input method (GCIN for example)

First, you have to modify `Dockerfile` for installing necessary im-modules. I leaved a comment in `Dockerfile`.

The GCIN im-module will communication with main GCIN process using unix socket, which is placed in `/tmp/gcin-username` by default. You have to modify `docker-compose.yml` to add volumn for it.

```yml
      - /tmp/gcin-hostusername:/tmp/gcin-hostusername
```

# License

WTFPL
