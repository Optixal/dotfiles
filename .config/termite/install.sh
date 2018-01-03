# VTE
apt install autoconf libglib2.0-dev gtk-doc-tools libpcre2-dev libgirepository1.0-dev gperf libvte-2.91-dev libvte-dev valac intltool
git clone https://github.com/thestinger/vte-ng
cd vte-ng
./autogen.sh
make && sudo make install
cd ..
rm -rf vte-ng

# TERMITE
apt install git
git clone --recursive https://github.com/thestinger/termite.git
cd termite
make && sudo make install
tic -x termite.terminfo
cd ..
rm -rf termite
