cd
git clone https://github.com/aircrack-ng/rtl8188eus.git
rmmod r8188eu.ko
echo 'blacklist r8188eu'| tee -a '/etc/modprobe.d/realtek.conf'
cd rtl8188eus
make && make install
modprobe 8188eu
reboot
