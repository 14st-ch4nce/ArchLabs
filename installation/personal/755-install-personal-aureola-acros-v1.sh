#!/bin/bash
set -e
##################################################################################################################
# Written to be used on 64 bits computers
# Author 	: 	Erik Dubois
# Website 	: 	http://www.erikdubois.be
##################################################################################################################
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

mv ~/.config/conky ~/.config/conky-original-archlabs
mkdir ~/.config/conky
cp ~/.aureola/acros/* ~/.config/conky
mv ~/.config/conky/conky.conf ~/.config/conky/conky.conf.original
mv ~/.config/conky/conky-archlabs-default.conf ~/.config/conky/conky.conf

cp ~/.aureola/acros/fonts/* ~/.fonts

fc-cache -fv ~/.fonts

cp ~/.aureola/acros/start-conky.desktop ~/.config/autostart


echo "################################################################"
echo "#########    conky will start if you reboot lateron     ########"
echo "################################################################"
