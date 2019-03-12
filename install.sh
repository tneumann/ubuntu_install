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
	feh

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
