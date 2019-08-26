![License MIT](https://img.shields.io/badge/license-MIT-blue.svg) [![Docker Automated build](https://img.shields.io/docker/automated/dragas/nikola.svg)](https://hub.docker.com/r/dragas/nikola) [![](https://img.shields.io/docker/stars/dragas/nikola.svg)](https://hub.docker.com/r/dragas/nikola) [![](https://img.shields.io/docker/pulls/dragas/nikola.svg)](https://hub.docker.com/r/dragas/nikola)

# Nikola

This [Docker](https://www.docker.com) image contains a complete [Nikola](https://getnikola.com/) installation, ready for use. 

Three branches are available:

*Master* branch (pulling dragas/nikola) is based on Alpine 3.10, Python 3.7 official packages and Nikola has been built via pip3 with [Extras] flag so it's complete. It has yuicompressor support enabled. It will be periodically rebuilt to follow Nikola and Alpine version updates.

*Debian*, (pulling dragas/nikola:debian), is based on Debian Buster, Python 3.7 official packages and Nikola has been built via pip3 with [Extras] flag so it's complete. It will be periodically rebuilt to follow Nikola and Debian version updates.

*Dev* branch (pulling dragas/nikola:dev) is based on Alpine 3.10, Python 3.7 official packages and Nikola has been built via pip3 with [Extras] flag by the *latest git development branch* available at build time. It may be useful to test new features and if you want to stay as current as possible.

## About Nikola

Nikola is a static website and blog generator. It supports many input formats. It is fast and reliable. Have a [look here](https://getnikola.com/).

## Quickstart

This section assumes you want to get started quickly, the following sections explain the
steps in more detail. So let's start.

The container has been created with workdir set on /nikola, so any command given should be given keeping in mind this setup.

To initialize a new website, use the following command:

```bash
$ docker run --rm -ti -v /yourpath:/nikola dragas/nikola nikola init
```

Running this command for the first time will download the image automatically. Nikola will ask some questions and prepare its path. The container will then terminate and delete as all Nikola data will be stored in */yourpath*

For Nikola usage, please refer to its original documentation: [Nikola Handbook](https://getnikola.com/handbook.html)
