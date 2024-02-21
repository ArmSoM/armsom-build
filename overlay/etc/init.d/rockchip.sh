#!/bin/bash

install_packages() {
    # MALI=bifrost-g31-g13p0
    # dpkg -i /opt/libmali-*$MALI*.deb
}


# second boot configure
if [ -e "/usr/local/first_boot_flag" ] ;
then
    echo "It's the second time booting."
    if [ ! -e "/usr/local/second_boot_flag" ];
    then
        install_packages
        touch /usr/local/second_boot_flag
    fi
fi

# first boot configure
if [ ! -e "/usr/local/first_boot_flag" ] ;
then
    echo "It's the first time booting."
    echo "The rootfs will be configured."

    # first boot configure

    touch /usr/local/first_boot_flag
fi
