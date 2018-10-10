# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# ME Bitbucket
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# scp to remote target:
# scp ~/.ssh/config.d/config.bb <user>@<IP>:~/.ssh/config

# git clone git@priv.bitbucket.org
#    add this --^^^

Host priv.bitbucket.org
    HostName bitbucket.org
    User git
    PreferredAuthentications publickey
    IdentityFile ~/.ssh/id_rsa_bb

