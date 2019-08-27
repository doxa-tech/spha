# README

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
# Add public key to the remote server
#
# ... (as always)

#
# Config rights
#
$ sudo visudo
# jstech ALL=(spha) NOPASSWD: /usr/bin/ssh

#
# Create first user
#
$ rails c production
> user = User.new(name: "nkcr", remember_token: "FvkYSOmc_zz1Xe4JLRohcQ", password: "1234", password_confirmation: "1234")
> user.save
```

## Deploy

```bash
# Start the ssh agent
eval `ssh-agent -s`
# Add key
ssh-add ~/.ssh/id_rsa
# Deploy
cap production deploy
```