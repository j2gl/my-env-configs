# Git Sign commits


```sh
brew install gpg


gpg --gen-key

gpg: checking the trustdb
gpg: marginals needed: 3  completes needed: 1  trust model: pgp
gpg: depth: 0  valid:   1  signed:   0  trust: 0-, 0q, 0n, 0m, 0f, 1u
gpg: next trustdb check due at 2027-03-05
[keyboxd]
---------
pub   ed25519 2024-03-05 [SC] [expires: 2027-03-05]
      E8759840F4FBF904359305791C72EDE30DBA2234
uid           [ultimate] Juan J. Garcia <juanjo.garcia@gmail.com>
sub   cv25519 2024-03-05 [E] [expires: 2027-03-05]


git config --global user.signingkey 9C6DAA40A4F015C0
```

## GPG and GIT


If you get this message:
```
git commit -m "My commit message"
error: unknown switch `m'
usage: git version [--build-options]
```

Try first 
```sh
# To kill the daemon
gpgconf --kill all

# To ask for the key passwor try to do a signing test
gpg --sign --armor --detach-sig --default-key 9C6DAA40A4F015C0 input.txt


# To test the signature
gpg --decrypt input.txt.asc
```


## GPG 

### Generate a Kay
```
gpg --gen-key
```

### list Keys
```
gpg --list-keys

# List private keys (generally only your own)
gpg --list-secret-keys

gpg --list-secret-keys --keyid-format short
gpg --list-secret-keys --keyid-format long
```

### Delete Key
```
gpg --delete-secret-keys 1C72EDE30DBA2234
```

#### 1. Export with private key
```
gpg --export-secret-keys --armor E8759840F4FBF904359305791C72EDE30DBA2234 > ./juanjo-gpg-key.asc


```
#### 2. Export public part
```
gpg --armor --export E8759840F4FBF904359305791C72EDE30DBA2234
```

### Import
```
gpg --import ./juanjo-gpg-key.asc
```

### sign
```
gpg --sign message.txt
gpg --decrypt message.txt.asc
```

### detached sign
```
gpg --detach-sign message.txt
```
### verify signature
```
gpg --verify some_signature.sig ./message.txt
```

### Editing a Key
```
gpg --edit-key 9C6DAA40A4F015C0

help
adduid
list
save
```

##  Install gpg suite
This is for having a keyring of gpg, and visual tools.

* https://gpgtools.org/

```sh
brew install --cask gpg-suite
```


## Importing Github General GPG KEY

https://github.com/web-flow.gpg



```
-----BEGIN PGP PUBLIC KEY BLOCK-----

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
=uMz0
-----END PGP PUBLIC KEY BLOCK-----
```