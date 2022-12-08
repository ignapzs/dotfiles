# .files
My own dotfiles


To test it:
```console
$ docker container run --rm -it debian:buster-slim
```
Once inside the docker container:
```console
apt-get update && apt-get install -y sudo curl git make
```

After that, try
```console
git clone https://github.com/ignapzs/dotfiles
cd dotfiles
make install
```