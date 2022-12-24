NS3_VER="3.36.1"

sudo apt update

sudo apt install -y g++ python3 python3-dev pkg-config sqlite3 cmake python3-setuptools git qtbase5-dev qtchooser qt5-qmake qtbase5-dev-tools gir1.2-goocanvas-2.0 python3-gi python3-gi-cairo python3-pygraphviz gir1.2-gtk-3.0 ipython3 openmpi-bin openmpi-common openmpi-doc libopenmpi-dev autoconf cvs bzr unrar gsl-bin libgsl-dev libgslcblas0 wireshark tcpdump sqlite sqlite3 libsqlite3-dev  libxml2 libxml2-dev libc6-dev libc6-dev-i386 libclang-dev llvm-dev automake python3-pip libxml2 libxml2-dev libboost-all-dev

cd ~

wget https://www.nsnam.org/releases/ns-allinone-${NS3_VER}.tar.bz2 

tar jxvf ns-allinone-${NS3_VER}.tar.bz2

cd ns-allinone-${NS3_VER}/ 

./build.py --enable-examples --enable-tests

cd ns-${NS3_VER}/

./ns3 run hello-simulator
#Hello Simulator

rm ns-allinone-${NS3_VER}.tar.bz2
