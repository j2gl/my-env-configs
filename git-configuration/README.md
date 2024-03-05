# Notes

How to have a different specific configuration for a folder.


## ssh config

Add keys to ssh-agent and keystore (`-K`):
```sh
ssh-add --apple-use-keychain ~/.ssh/<SSH_KEY_FILE>
```

### 1. pold ~/.ssh/config
```conf
# Default github account XXXXXX
Host github.com
   HostName github.com
   IdentityFile ~/.ssh/id_juanjo-XXXXXX
   IdentitiesOnly yes

# j2gl github account
Host j2gl.github.com
   HostName github.com
   IdentityFile ~/.ssh/id_juanjo-gmail
   IdentitiesOnly yes
```

### 2. new ~/.ssh/config
```conf
# Default github account: XXXXXX
Host github.com
   HostName github.com
   IdentityFile ~/.ssh/id_juanjo-XXXXXX
   IdentitiesOnly yes

# j2gl github account
Host j2gl.github.com
   HostName github.com
   IdentityFile ~/.ssh/id_juanjo-gmail
   IdentitiesOnly yes
```

You will need to add this to your current .gitconfig
```ini
[includeIf "gitdir:~/projects"]
    path = ~/projects/my-env-configs/git-configuration/.gitconfig-j2gl

```


## References
* [8-easy-steps-to-set-up-multiple-git-accounts](https://blog.gitguardian.com/8-easy-steps-to-set-up-multiple-git-accounts/)
* [git-tips-1-theres-a-git-config-for-that](https://blog.gitbutler.com/git-tips-1-theres-a-git-config-for-that/)