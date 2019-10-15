sudo apt install python python-pip python3 python3-pip wget curl git software-properties-common apt-transport-https

echo "Installed prerequisites"

wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'

sudo apt update
sudo apt install google-chrome-stable code

echo "Installed Chrome and VScode"

curl -fsSL https://raw.githubusercontent.com/platformio/platformio-core/master/scripts/99-platformio-udev.rules | sudo tee /etc/udev/rules.d/99-platformio-udev.rules
sudo cp 99-platformio-udev.rules /etc/udev/rules.d/99-platformio-udev.rules

echo "Installed PlatformIO Core"

sudo pip3 install telebot asyncio pymongo Flask Flask_SocketIO telebot tqdm gevent pprint Werkzeug flask_pymongo

sudo usermod -a -G adm,cdrom,lpadmin,sudo,sambashare,dip,plugdev,dialout qmobot

update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/xubuntu-text/xubuntu-text.plymouth 100
sudo update-initramfs -u

