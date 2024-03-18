#!/bin/bash

package_installed() {
    dpkg -l | grep -q "^ii  $1 "
}

while read -r package_name; do
    if package_installed "$package_name"; then
        echo "$package_name ya está instalado"
    else
        sudo apt-get install $package_name 2>&1 | \
            pv -pterb | \
            while read -r line; do
                printf "Instalando %s: %s\n" "$package_name" "$line"
            done
    fi
done
