#!/bin/bash

sudo dnf update

#Add rpmfusion repo
sudo dnf install \
  https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm && sudo dnf install \
  https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

#Install nvidia driver
sudo dnf install akmod-nvidia gperftools-libs

#Add repos
sudo dnf copr enable keefle/cbonsai -y && sudo dnf copr enable refi64/webapp-manager -y && sudo dnf copr enable dusansimic/caprine

#Install Gaming stuff
sudo dnf install steam mangohud antimicrox lutris gnome-chess aisleriot wine-staging winetricks java-1.8.0-openjdk.x86_64 java-1.8.0-openjdk-headless.x86_64 java-11-openjdk.x86_64 java-11-openjdk.x86_64 java-11-openjdk.x86_64 java-11-openjdk.x86_64 java-11-openjdk.x86_64 

#Install random stuff
sudo dnf install alsa-lib-devel ncurses-devel fftw3-devel pulseaudio-libs-devel libtool

#Install Terminal toys
sudo dnf install ranger cmatrix fish lolcat neofetch cbonsai kitty cava cowsay sl onedrive unrar xclicker ifuse speedtest-cli w3m bpytop fortune-mod

#install general apps
sudo dnf install webapp-manager appeditor bleachbit piper virt-manager gnome-tweaks gthumb obs-studio krita fragments shotwell celluloid easytag caprine

#Install flatpaks
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo flatpak install flathub org.gustavoperedo.FontDownloader io.github.shiftey.Desktop com.jetbrains.PyCharm-Community com.github.vladimiry.ElectronMail com.bitwarden.desktop com.wps.Office io.bassi.Amberol io.gdevs.GDLauncher com.vscodium.codium org.gabmus.whatip com.github.huluti.Curtail com.github.jeromerobert.pdfarranger org.telegram.desktop fr.romainvigier.MetadataCleaner com.github.tchx84.Flatseal com.mattjakeman.ExtensionManager io.github.realmazharhussain.GdmSettings

#Install corefonts
rpm -i https://downloads.sourceforge.net/project/mscorefonts2/rpms/msttcore-fonts-installer-2.6-1.noarch.rpm

#Install MS Teams
sudo yum install teams-1.3.00.958-1.x86_64.rpm
wget https://packages.microsoft.com/yumrepos/ms-teams/teams-1.3.00.958-1.x86_64.rpm

#Install digidoc4
sudo dnf install cmake openssl-devel xerces-c-devel xml-security-c-devel zlib-devel vim-common qt5-qttools-devel qt5-qtsvg-devel qt5-linguist pcsc-lite-devel openssl-devel libdigidocpp openldap-devel gettext pkg-config https://www.codesynthesis.com/download/xsd/4.0/linux-gnu/x86_64/xsd-4.0.0-1.x86_64.rpm
git clone --recursive https://github.com/open-eid/libdigidocpp
cd ~/libdigidocpp/
mkdir build
cd build
cmake ..
make
sudo make install
 /usr/local/bin/digidoc-tool

 git clone --recursive https://github.com/open-eid/DigiDoc4-Client
cd ~/DigiDoc4-Client/
mkdir build
cd build
cmake ..
make
sudo make install
/usr/local/bin/qdigidoc4

#stuff i need to work out
echo "https://github.com/open-eid/libdigidocpp"
echo "https://github.com/open-eid/DigiDoc4-Client"

#change shell
chsh -s /usr/bin/fish
sudo chsh -s /usr/bin/fish
git clone https://github.com/oh-my-fish/oh-my-fish
 cd ~/oh-my-fish/
bin/install --offline
omf install bobthefish

