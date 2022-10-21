#!/bin/bash
yum -y install deltarpm
rpm --import https://www.elrepo.org/RPM-GPG-KEY-elrepo.org
yum -y install https://www.elrepo.org/elrepo-release-7.el7.elrepo.noarch.rpm
yum -y --enablerepo=elrepo-kernel install kernel-ml
grub2-set-default 0
echo "GRUB_DEFAULT=0" >> /etc/default/grub
grub2-mkconfig -o /boot/grub2/grub.cfg
#yum -y versionlock kernel-[0-9]*
reboot
