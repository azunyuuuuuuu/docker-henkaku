# docker-henkaku
A simple docker container for running the [HENkaku](https://github.com/henkaku/henkaku) exploit by molecule.

## What it does
This docker container image just clones the official HENkaku repository and executes it, simple as that. You can run it where ever you want, on your own personal computer for offline use, on your personal webserver, in the cloud, on your toaster, etc.

## Usage
Simply run the following command on a docker host:

```
docker run -d -e HENKAKU_HOST=192.168.1.100 -e HENKAKU_STAGE2_PORT=4000 -e HENKAKU_PKG_PORT=8888 -p 8888:8888 -p 4000:4000 azunyuuuuuuu/docker-henkaku:latest
```

You should replace the variables `HENKAKU_HOST`, `HENKAKU_PKG_PORT` and `HENKAKU_STAGE2_PORT` with something working more for your environment. The default environment variables are set as following:
```
ENV HENKAKU_HOST "192.168.1.100"
ENV HENKAKU_STAGE2_PORT "4000"
ENV HENKAKU_PKG_PORT "8888"
```
Also make sure that the `-p` parameters are also set to the ports defined in the environment variables.

__In short__ you most likely only want to change `HENKAKU_HOST` to the ip address of your server and leave the rest as is :>

## License
The `Dockerfile` and `run.sh` files are licensed under MIT (see `LICENSE` file) so don't blame me when something gets broken!