# essentials
sudo apt install -y \
	build-essential \
	cmake-qt-gui \
	vim-gtk3 \
	zsh \
	wget \
	curl \
	git \
	ssh \
	feh \
        silversearcher-ag

# setup oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"


# setup anaconda
if [ ! -d ~/miniconda3 ]; then
	cd /tmp
	rm -f Miniconda3-latest-Linux-x86_64.sh
	wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
	chmod +x Miniconda3-latest-Linux-x86_64.sh
	./Miniconda3-latest-Linux-x86_64.sh
	cd -
fi


# generate ssh key
if [ ! -f ~/.ssh/id_rsa ]; then
	ssh-keygen
fi

# various stuff
sudo apt install -y \
	fonts-powerline


# dev tools
sudo snap install pycharm-community --classic
sudo snap install gitkraken
sudo snap install clion --classic

if [ ! -f /usr/local/bin/OpenCorsairLink.elf ]; then
	echo "Should I install corsair water cooling tools?"
	read -p "y (yes) or n (no): " USER_INPUT
	if [[ "$USER_INPUT" == "y" ]]; then
		sudo apt install libusb-1.0-0 libusb-1.0-0-dev pkg-config
		cd /tmp
		git clone git@github.com:audiohacked/OpenCorsairLink.git
		cd OpenCorsairLink
		make
		mkdir -p ~/bin
		sudo cp ./OpenCorsairLink.elf /usr/local/bin
		cd -

	fi
fi

# cpu load indicator applet
sudo apt-get install -y gir1.2-gtop-2.0 gir1.2-networkmanager-1.0  gir1.2-clutter-1.0 chrome-gnome-shell
firefox "https://extensions.gnome.org/extension/120/system-monitor/"
