![License MIT](https://img.shields.io/badge/license-MIT-blue.svg) [![Docker Automated build](https://img.shields.io/docker/automated/dragas/nikola.svg)](https://hub.docker.com/r/dragas/nikola) [![](https://img.shields.io/docker/stars/dragas/nikola.svg)](https://hub.docker.com/r/dragas/nikola) [![](https://img.shields.io/docker/pulls/dragas/nikola.svg)](https://hub.docker.com/r/dragas/nikola)

# Nikola

This [Docker](https://www.docker.com) image contains a complete [Nikola](https://getnikola.com/) installation, ready for use. 

Two branches are available:

*Master*, the default one (pulling dragas/nikola), is based on Debian Stretch, Python 3.5 official packages and Nikola has been built via pip3 with [Extras] flag so it's complete. It will be periodically rebuilt to follow Nikola and Debian version updates.

*Alpine* branch (pulling dragas/nikola:alpine) is based on Alpine 3.7, Python 3.6 official packages and Nikola has been built via pip3 with [Extras] flag so it's complete. It will be periodically rebuilt to follow Nikola and Alpine version updates.

## About Nikola

Nikola is a static website and blog generator. It supports many input formats. It is fast and reliable. Have a [look here](https://getnikola.com/).

## Quickstart

This section assumes you want to get started quickly, the following sections explain the
steps in more detail. So let's start.

The container has been created with workdir set on /nikola, so any command given should be given keeping in mind this setup.

To initialize a new website, use the following command:

```bash
$ docker run --rm -ti -v /yourpath:/nikola dragas/nikola:alpine nikola init
```

Running this command for the first time will download the image automatically. Nikola will ask some questions and prepare its path. The container will then terminate and delete as all Nikola data will be stored in */yourpath*

For Nikola usage, please refer to its original documentation: [Nikola Handbook](https://getnikola.com/handbook.html)
