
#!/bin/sh
#

wget -O /var/volatile/tmp/enigma2-plugin-extensions-ipaudiopro_1.1-r2_all.ipk "https://raw.githubusercontent.com/Ham-ahmed/Ipaudio-2024/main/enigma2-plugin-extensions-ipaudiopro_1.1-r2_all.ipk"
wait
opkg install --force-overwrite /tmp/*.ipk
wait
rm -f /var/volatile/tmp/enigma2-plugin-extensions-ipaudiopro_1.1-r2_all.ipk
wait
sleep 2;
exit 0