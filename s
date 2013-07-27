# Virtualbox
sudo modprobe vboxdrv
sudo modprobe vboxnetflt

# ntp time update
#sudo ntpdate 3.cn.pool.ntp.org

# SD card reader
#sudo modprobe tifm_sd

# cleaning the memory
#su -c 'echo 3 > /proc/sys/vm/drop_caches'

# mp3 tag
#find . -iname "*.mp3" -execdir mid3iconv -e gbk {} \;

# GPG
#gpg --keyserver keyserver.ubuntu.com --recv *
#gpg --export --armor ******** | sudo apt-key add -

# wireshark
#sudo chmod o+x /usr/bin/dumpcap

# dhcpcd wlan
#mv wpa_supplicant.conf wpa_supplicant.conf.ori
#wpa_passphrase ##id## ##passwd## >> wpa_supplicant.conf
#wpa_supplicant -B -Dwext -i wlan0 -c /etc/wpa_supplicant/wpa_supplicant.conf
#dhcpcd wlan0
