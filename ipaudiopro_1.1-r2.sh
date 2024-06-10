#!/bin/sh

if [ -d /usr/lib/enigma2/python/Plugins/Extensions/IPaudioPro ]; then
echo "> removing package please wait..."
sleep 3s 
rm -rf /usr/lib/enigma2/python/Plugins/Extensions/IPaudioPro >/dev/null 2>&1
opkg remove enigma2-plugin-extensions-IPaudioPro
opkg remove enigma2-plugin-extensions-IP-audioPro

sleep 3s

else

#config
plugin=ipaudiopro
version=1.1
url=https://gitlab.com/h-ahmed/Panel/-/raw/main/ipaudiopro_1.1-r2_all.tar.gz
package=/var/volatile/tmp/$plugin-$version.tar.gz

echo "> Downloading $plugin-$version package  please wait ..."
sleep 3s

#remove unnecessary files and folders
if [  -d "/CONTROL" ]; then
rm -r  /CONTROL >/dev/null 2>&1
fi
rm -rf /control >/dev/null 2>&1
rm -rf /postinst >/dev/null 2>&1
rm -rf /preinst >/dev/null 2>&1
rm -rf /prerm >/dev/null 2>&1
rm -rf /postrm >/dev/null 2>&1
rm -rf /tmp/*.ipk >/dev/null 2>&1
rm -rf /tmp/*.tar.gz >/dev/null 2>&1

wget -O $package --no-check-certificate $url
tar -xzf $package -C /
extract=$?
rm -rf $package >/dev/null 2>&1

echo ''
if [ $extract -eq 0 ]; then 
echo "> $plugin-$version package installed successfully"
sleep 3s
else
echo "> $plugin-$version package installation failed"
sleep 3s
fi

fi
exit 0