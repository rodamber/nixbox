#!/usr/bin/env sh

ISO_URL="https://nixos.org/releases/nixos/latest-iso-minimal-x86_64-linux"
ISO_CHECKSUM=$(wget -qO- https://nixos.org/releases/nixos/latest-iso-minimal-x86_64-linux-sha256)

if [ $? -ne 0 ]; then
    echo "Error: could not download checksum";
    exit 1;
fi

packer build                                    \
       -var "latest_iso_url=$ISO_URL"           \
       -var "latest_iso_checksum=$ISO_CHECKSUM" \
       nixos-x86_64.json
