# trojan

Adding a custom-setup stanza can only be good, right?

This repo demonstrates two ways modifications to a cabal file can cause
breakage. Both of these changes apply to `trojan/trojan.cabal`:

1. Changing a flag default can result in a failing build flag. Modify
   `break-the-build`'s `default` from `False` to `True`
2. Adding a `custom-setup` stanza can add a dependency on a nefarious package.
   Uncomment the `custom-setup` stanza to "install malware" on your system.
    * Due to ethical concerns, and laziness, no actual malware is installed.
