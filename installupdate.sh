#!/bin/bash

clear

show_main_menu() {
while true; do
clear
echo "#################################################################"
echo "install-uefi-in-qemu-installer: aug 2023"
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

clear

echo "#################################################################"
echo "(1)> (Install) the x86_64 version of QEMU UEFI"
echo "(2)> (Install) the ia_32 version of QEMU UEFI"
echo "(3)> (Install) the x86_64 + ia_32 version of QEMU UEFI"
echo "(4)> (Exit)"
echo "#################################################################"

read -p "Enter your choice: " choice
echo "#################################################################"

case $choice in
1)
show_qemu-x86-64
;;
2)
show_qemu-ia-32
;;
3)
show_qemu-x86-64-ia-32
;;
4)
exit 0
;;
*)
echo "Invalid choice. Please try again."
echo "#################################################################"
sleep 2
;;
esac
done
}

show_qemu-x86-64() {
while true; do
clear

sudo rm /usr/share/ovmf-github-x86_64/OVMF.fd

clear

sudo rm -rf /usr/share/ovmf-github-x86_64/

sudo mkdir -p /usr/share/ovmf-github-x86_64

sudo cp x86_64/OVMF.fd /usr/share/ovmf-github-x86_64/

sudo rm /usr/bin/ovmf-check-version

sudo cp ovmf-check-version /usr/bin/

sudo chmod +x /usr/bin/ovmf-check-version

clear

echo " ██████   ██████  ███    ██ ███████ ██ "
echo " ██   ██ ██    ██ ████   ██ ██      ██ "
echo " ██   ██ ██    ██ ██ ██  ██ █████   ██ "
echo " ██   ██ ██    ██ ██  ██ ██ ██         "
echo " ██████   ██████  ██   ████ ███████ ██ "  
echo "#################################################################"
echo "Installation/Update completed."
echo "#################################################################"
echo "Please execute the following command to run QEMU with UEFI: 
qemu-system-x86_64 -bios /usr/share/ovmf-github-x86_64/OVMF.fd"
echo "#################################################################"
echo "To check the version, use the sudo ovmf-check-version or ovmf-check-version command" 
echo "#################################################################"
read -rsn1 -p "press Enter to return to the main menu
#################################################################" key
if [[ $key == "r" || $key == "R" ]]; then
continue
fi

break
done

echo "#################################################################"
}

show_qemu-ia-32() {
while true; do
clear

sudo rm /usr/share/ovmf-github-ia_32/OVMF.fd

clear

sudo rm -rf /usr/share/ovmf-github-ia_32/

sudo mkdir -p /usr/share/ovmf-github-ia_32

sudo cp ia_32/OVMF.fd /usr/share/ovmf-github-ia_32/

sudo rm /usr/bin/ovmf-check-version

sudo cp ovmf-check-version /usr/bin/

sudo chmod +x /usr/bin/ovmf-check-version

clear

echo " ██████   ██████  ███    ██ ███████ ██ "
echo " ██   ██ ██    ██ ████   ██ ██      ██ "
echo " ██   ██ ██    ██ ██ ██  ██ █████   ██ "
echo " ██   ██ ██    ██ ██  ██ ██ ██         "
echo " ██████   ██████  ██   ████ ███████ ██ "  
echo "#################################################################"
echo "Installation/Update completed."
echo "#################################################################"
echo "Please execute the following command to run QEMU with UEFI: 
qemu-system-i386 -bios /usr/share/ovmf-github-ia_32/OVMF.fd"
echo "#################################################################"
echo "To check the version, use the sudo ovmf-check-version or ovmf-check-version command" 
echo "#################################################################"
read -rsn1 -p "press Enter to return to the main menu
#################################################################" key
if [[ $key == "r" || $key == "R" ]]; then
continue
fi

break
done

echo "#################################################################"
}

show_qemu-x86-64-ia-32() {
while true; do
clear

sudo rm /usr/share/ovmf-github-x86_64/OVMF.fd

clear

sudo rm -rf /usr/share/ovmf-github-x86_64/

sudo mkdir -p /usr/share/ovmf-github-x86_64

sudo cp x86_64/OVMF.fd /usr/share/ovmf-github-x86_64/

sudo rm /usr/share/ovmf-github-ia_32/OVMF.fd

sudo rm -rf /usr/share/ovmf-github-ia_32/

sudo mkdir -p /usr/share/ovmf-github-ia_32

sudo cp ia_32/OVMF.fd /usr/share/ovmf-github-ia_32/

sudo rm /usr/bin/ovmf-check-version

sudo cp ovmf-check-version /usr/bin/

sudo chmod +x /usr/bin/ovmf-check-version

clear

echo " ██████   ██████  ███    ██ ███████ ██ "
echo " ██   ██ ██    ██ ████   ██ ██      ██ "
echo " ██   ██ ██    ██ ██ ██  ██ █████   ██ "
echo " ██   ██ ██    ██ ██  ██ ██ ██         "
echo " ██████   ██████  ██   ████ ███████ ██ "  
echo "#################################################################"
echo "Installation/Update completed."
echo "#################################################################"
echo "Please execute the following command to run QEMU with UEFI: 
qemu-system-x86_64 -bios /usr/share/ovmf-github-x86_64/OVMF.fd
qemu-system-i386 -bios /usr/share/ovmf-github-ia_32/OVMF.fd"
echo "#################################################################"
echo "To check the version, use the sudo ovmf-check-version or ovmf-check-version command" 
echo "#################################################################"
read -rsn1 -p "press Enter to return to the main menu
#################################################################" key
if [[ $key == "r" || $key == "R" ]]; then
continue
fi

break
done

echo "#################################################################"
}

show_main_menu
