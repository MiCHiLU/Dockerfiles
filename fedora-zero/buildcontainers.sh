#!/bin/bash -x
rm -rf /tmp/fedora*
rm -rf *.tar.xz
appliance-creator -c fedora-zero.ks -d -v -t /tmp \
    -o /tmp --name "fedora-zero" --release rawhide \
    --format=qcow2 &&
virt-tar-out -a \
    /tmp/fedora-zero.qcow2 / - | \
    xz --best > fedora-zero.tar.xz
