#!/bin/bash
## Install DNF On CentOS 7
yum -y install dnf subscription-manager mc aspell-en yum-cron rh-perl530 vim
echo 'source scl_source enable rh-perl530' >> ~/.bashrc
# 
## Update IPs for CSF
wget https://raw.githubusercontent.com/sanikovich/centminmod/main/csf.deny; 
mv -f ./csf.deny /etc/csf/csf.deny
## Install New Git Version for CentOS 7
wget https://packages.endpoint.com/endpoint-rpmsign-7.pub
rpm --import endpoint-rpmsign-7.pub
rpm -qi gpg-pubkey-703df089 | gpg --with-fingerprint
yum -y install https://packages.endpoint.com/rhel/7/os/x86_64/endpoint-repo-1.9-1.x86_64.rpm
rm -rf endpoint-rpmsign-7.pub
echo 'priority=1' >> /etc/yum.repos.d/endpoint.repo
yum repolist
yum -y install git
git config --global user.name "Victor Sanikovich"
git config --global user.email "sanikovich@gmail.com"
git config --global color.ui true
git config --global core.editor vim
## Installing snap on CentOS
yum install -y snapd
systemctl enable --now snapd.socket
ln -s /var/lib/snapd/snap /snap
exec bash
sleep 15
snap install snapcraft --classic
# Gohugo Install
snap install hugo --channel=extended/stable
# Rakudo
# https://cloudsmith.io/~nxadm-pkgs/repos/rakudo-pkg/setup/#formats-rpm
# https://awesomeopensource.com/project/nxadm/rakudo-pkg
curl -1sLf 'https://dl.cloudsmith.io/public/nxadm-pkgs/rakudo-pkg/setup.rpm.sh' | bash
yum -y install rakudo-pkg
exec bash
# # Install RakuBrew https://rakubrew.org/?platform=linux
curl https://rakubrew.org/install-on-perl.sh | bash
echo 'eval "$(/usr/bin/rakubrew init Bash)"' >> ~/.bashrc
exec bash
rakubrew self-upgrade
#  Zef Raku / Perl6 Module Management mhttps://github.com/ugexe/zef
rakubrew build-zef
echo 'PATH=$PATH:/opt/rakudo-pkg/share/perl6/site/bin' >> ~/.bashrc
source ~/.bashrc
## Install Golang
rpm --import https://mirror.go-repo.io/centos/RPM-GPG-KEY-GO-REPO
curl -s https://mirror.go-repo.io/centos/go-repo.repo | tee /etc/yum.repos.d/go-repo.repo
echo 'protect=0' >> /etc/yum.repos.d/go-repo.repo
echo 'priority=1' >> /etc/yum.repos.d/go-repo.repo
yum -y install golang
# Update VIM
# sudo curl -L https://copr.fedorainfracloud.org/coprs/hnakamur/vim/repo/epel-7/hnakamur-vim-epel-7.repo -o /etc/yum.repos.d/hnakamur-vim-epel-7.repo
yum-config-manager --add-repo https://copr.fedorainfracloud.org/coprs/hnakamur/vim/repo/epel-7/hnakamur-vim-epel-7.repo
echo 'protect=0' >> /etc/yum.repos.d/hnakamur-vim-epel-7.repo
echo 'priority=1' >> /etc/yum.repos.d/hnakamur-vim-epel-7.repo
yum -y Update
# Add Setting to Midnight Commander


# PHP
# https://blog.remirepo.net/post/2021/07/01/PHP-version-7.3.29-7.4.21-and-8.0.8




# Vim for Raku https://github.com/Raku/vim-raku
# https://github.com/Raku/vim-raku


# yum clean all
## Install Vim 
# cd ~
# git clone https://github.com/vim/vim.git
# cd vim
# curl -L https://copr.fedorainfracloud.org/coprs/mrsipan/vim8/repo/epel-7/mrsipan-vim8-epel-7.repo -o /etc/yum.repos.d/mrsipan-vim8-epel-7.repo

# ## Install Perl
# wget https://www.cpan.org/src/5.0/perl-5.34.0.tar.gz
# tar -xzf perl-5.34.0.tar.gz
# cd perl-5.34.0
# ./Configure -des
# make
# make test
# make install
# cd ..
# rm -rf perl-5.34.0
# rm -rf perl-5.34.0.tar.gz
# ##
