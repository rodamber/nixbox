NixOS boxes for Vagrant
=======================

[NixOS](http://nixos.org) is a linux distribution based on a purely functional
package manager. This project builds [vagrant](http://vagrantup.com) .box images.

It is a minimal NixOS build based on the
[latest-iso-minimal-x86_64-linux iso](https://nixos.org/releases/nixos/latest-iso-minimal-x86_64-linux)
provided [here](https://nixos.org/nixos/download.html).

Building the images
-------------------

First install [packer](http://packer.io) and [virtualbox](https://www.virtualbox.org/)

Then:

```
./build.sh
```

The .box image is now ready to go and you can use it in vagrant:

```
vagrant box add nixbox64 packer_virtualbox-iso_virtualbox.box
```

License
-------

Copyright 2015 under the MIT
