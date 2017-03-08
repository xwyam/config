# dhcpcd wlan
mv wpa_supplicant.conf wpa_supplicant.conf.ori
wpa_passphrase ##id## ##passwd## >> wpa_supplicant.conf
wpa_supplicant -B -Dwext -i wlan0 -c /etc/wpa_supplicant/wpa_supplicant.conf
dhcpcd wlan0
