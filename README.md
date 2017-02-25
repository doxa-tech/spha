# README

Environment variables necessary:

* JSPORT
* FRIBOURG_USER
* ROMONT_USER

# Server installation
```

#
# Create user
#
$ useradd -m -d /home/spha spha
$ passwd spha
$ su spha

#
# Create ssh key (without passphrase)
#
$ mkdir ~/.ssh
$ chmod 700 ~/.ssh
$ ssh-keygen -t rsa -b 4096

#
# Add remote host identity
#
$ ssh-keyscan -p $JSPORT $REMOTE_HOST >> ~/.ssh/known_hosts

#
# Config rights
#
$ sudo visudo
# jstech ALL=(spha) NOPASSWD: /home/jstech/apps/spha/current/lib/scripts/*
```
