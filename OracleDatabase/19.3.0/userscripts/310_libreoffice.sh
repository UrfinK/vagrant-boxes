#!/bin/bash
echo "Libreoffice installieren"
DIRXXX=$(dirname $0)

echo $0
echo $DIRXXX
echo $HOME
echo `whoami`

ls /vagrant
touch /vagrant/x.x

DOWNLOADPATH=/vagrant
RPMPATH=LibreOffice_6.2.8.2_Linux_x86-64_rpm/RPMS
RPMARCHIVE=LibreOffice_6.2.8_Linux_x86-64_rpm.tar.gz

if [[ ! -f "$DOWNLOADPATH/$RPMARCHIVE" ]]; then
  echo wget http://download.documentfoundation.org/libreoffice/stable/6.2.8/rpm/x86_64/LibreOffice_6.2.8_Linux_x86-64_rpm.tar.gz
  wget --quiet http://download.documentfoundation.org/libreoffice/stable/6.2.8/rpm/x86_64/$RPMARCHIVE -O $DOWNLOADPATH/$RPMARCHIVE
fi

cd $DOWNLOADPATH

tar -xvzf $RPMARCHIVE

yum -q list installed libreo* &>/dev/null && yum remove -y $(yum list installed "libobasis6*"|grep libobasis| awk '{ print $1 }')  || echo "Not installed"

cd $RPMPATH

ls -l

yum -y localinstall libreoffice6.2-ure-6.2.8.2-2.x86_64.rpm
yum -y localinstall libobasis6.2-core-6.2.8.2-2.x86_64.rpm
yum -y localinstall libobasis6.2-base-6.2.8.2-2.x86_64.rpm
yum -y localinstall libobasis6.2-calc-6.2.8.2-2.x86_64.rpm
yum -y localinstall libobasis6.2-draw-6.2.8.2-2.x86_64.rpm
yum -y localinstall libobasis6.2-en-US-6.2.8.2-2.x86_64.rpm
yum -y localinstall libobasis6.2-ooofonts-6.2.8.2-2.x86_64.rpm
yum -y localinstall libobasis6.2-images-6.2.8.2-2.x86_64.rpm 
yum -y localinstall libreoffice6.2-6.2.8.2-2.x86_64.rpm
yum -y localinstall libobasis6.2-writer-6.2.8.2-2.x86_64.rpm 
yum -y localinstall libreoffice6.2-writer-6.2.8.2-2.x86_64.rpm

#  TODO Klärung mit NK, folgende Packages war noch notwendig
yum -y install cairo
yum -y install libgcc_s.so.1

# link von 5.1 auf 6.2 damit alte server.properties noch funktioniert
ln -s /opt/libreoffice6.2 /opt/libreoffice5.1



