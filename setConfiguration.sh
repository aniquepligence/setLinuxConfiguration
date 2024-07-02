#!/bin/bash

# Set swappiness to 10
echo "Setting swappiness to 10..."
sysctl vm.swappiness=10

# Make the change permanent by adding it to /etc/sysctl.conf
if grep -q "^vm.swappiness" /etc/sysctl.conf; then
    sed -i "s/^vm.swappiness=.*/vm.swappiness=10/" /etc/sysctl.conf
else
    echo "vm.swappiness=10" >> /etc/sysctl.conf
fi

echo "Swappiness set to 10 and made permanent."
