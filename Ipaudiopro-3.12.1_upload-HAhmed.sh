#!/bin/sh
#
cd /tmp
set -e 
 wget "https://raw.githubusercontent.com/Ham-ahmed/Ipaudio-2024/main/IpaudioPro-3.12.1.tar.gz"
wait
tar -xzf IpaudioPro-3.12.1.tar.gz  -C /
wait
cd ..
set +e
rm -f /tmp/IpaudioPro-3.12.1.tar.gz
sleep 2;
echo "" 
echo "" 
echo "**************************************************************************************************"
echo "#  INSTALLED SUCCESSFULLY #"
echo "*      888888  888888    .d88b.    88888     88    88   .d88b.  *"
echo "*      88  88  88  88   88    88   88   88   88    88  88    88 *"
echo "*      88    88    88  88      88  88    88  88oooo88  88oooo88 *"
echo "*      88          88   88    88   88    88  88    88  88    88 *"
echo "*      88          88   .d88b.     888888    88    88  88    88 *"
echo "*          EDITE - Hamdy Ahmed      Novaler 4k Egypt  *"
echo "*                Enigma2 restart is required          *"
echo "*************************************************************************************************"
echo "   UPLOADED BY  >>>>   HAMDY_AHMED "
sleep 4;
	echo '========================================================================================='
###########################################                                                                                                                  
echo ". >>>>         RESTARING     <<<<"
echo "*************************************************************************************************"
wait
killall -9 enigma2
exit 0





























