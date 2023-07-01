#!/bin/bash


clear
echo "#################################################################"
echo "install-uefi-in-qemu-uninstaller: july 2023"
echo "#################################################################"
echo " ██    ██ ███████ ███████ ██ "
echo " ██    ██ ██      ██      ██ "
echo " ██    ██ █████   █████   ██ "
echo " ██    ██ ██      ██      ██ "
echo "  ██████  ███████ ██      ██ "                                                                                                                                                  
echo "#################################################################"
echo "install-uefi-in-qemu-github: https://github.com/manoel-linux/install-uefi-in-qemu"
echo "#################################################################"


if [[ $EUID -ne 0 ]]; then
echo " ███████ ██████  ██████   ██████  ██████  ██ "
echo " ██      ██   ██ ██   ██ ██    ██ ██   ██ ██ "
echo " █████   ██████  ██████  ██    ██ ██████  ██ "
echo " ██      ██   ██ ██   ██ ██    ██ ██   ██    "
echo " ███████ ██   ██ ██   ██  ██████  ██   ██ ██ "                                                                                        
echo "#################################################################"
echo "Superuser privileges or sudo required to execute the script." 
echo "#################################################################"
exit 1
fi

sudo rm /usr/share/ovmf-github-x86_64/OVMF.fd

sudo rm -rf /usr/share/ovmf-github-x86_64/

sudo rm /usr/share/ovmf-github-ia_32/OVMF.fd

sudo rm -rf /usr/share/ovmf-github-ia_32/

sudo rm /usr/bin/ovmf-check-version

echo " ██████   ██████  ███    ██ ███████ ██ "
echo " ██   ██ ██    ██ ████   ██ ██      ██ "
echo " ██   ██ ██    ██ ██ ██  ██ █████   ██ "
echo " ██   ██ ██    ██ ██  ██ ██ ██         "
echo " ██████   ██████  ██   ████ ███████ ██ " 
echo "#################################################################"
echo "Uninstallation completed."
echo "#################################################################"
