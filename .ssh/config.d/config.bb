# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# ME Bitbucket
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~


Host bitbucket.org
    HostName bitbucket.org
    User git
    PreferredAuthentications publickey
    IdentitiesOnly yes
    IdentityFile ~/.ssh/id_rsa_me_bb

# scp to remote target:
# scp ~/.ssh/config.d/config.bb <user>@<IP>:~/.ssh/config

# git clone git@priv.bitbucket.org
#    add this --^^^

Host priv.bitbucket.org
    HostName bitbucket.org
    User git
    PreferredAuthentications publickey
    IdentityFile ~/.ssh/id_rsa_bb

