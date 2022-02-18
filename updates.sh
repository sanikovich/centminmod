#!/bin/bash
# FTP Setting
# vim /etc/pure-ftpd/pure-ftpd.conf
# change
# TLS                      2
# to
# TLS                      1
# service pure-ftpd restart
#
#
## Install DNF On CentOS 7
yum -y install vim-enhanced p7zip p7zip-plugins subscription-manager mc aspell-en yum-cron gpm-libs rh-perl530 slang-devel
echo 'source scl_source enable rh-perl530' >> ~/.bashrc
# rpm -Uhv  https://rpms.remirepo.net/enterprise/remi-release-7.rpm
# Поиск по репо
# yum --enablerepo=* search aspell\*
#
## Update IPs for CSF
wget https://raw.githubusercontent.com/sanikovich/centminmod/main/csf.deny;
mv -f ./csf.deny /etc/csf/csf.deny
#
## Install New Git Version for CentOS 7
### Git Install  From wandisco ###
yum install -y http://opensource.wandisco.com/centos/7/git/x86_64/wandisco-git-release-7-2.noarch.rpm
yum -y install perl-Digest-SHA
yum -y --disablerepo=base,updates --enablerepo=rpmforge-extras install git
git config --global user.name "Victor Sanikovich"
git config --global user.email "sanikovich@gmail.com"
git config --global color.ui true
git config --global core.editor vim
### Installing snap on CentOS ###
yum install -y snapd
systemctl enable --now snapd.socket
sleep 10s
ln -s /var/lib/snapd/snap /snap
systemctl restart snapd
sleep 10s
snap install snapcraft --classic
sleep 15s
### Gohugo Install ###
snap install hugo --channel=extended/stable
### Perlbrew Install ###
# wget -O - https://install.perlbrew.pl | bash
# cpan App::perlbrew
##
#
## Install Golang ###
rpm --import https://mirror.go-repo.io/centos/RPM-GPG-KEY-GO-REPO
curl -s https://mirror.go-repo.io/centos/go-repo.repo | tee /etc/yum.repos.d/go-repo.repo
echo 'protect=0' >> /etc/yum.repos.d/go-repo.repo
echo 'priority=1' >> /etc/yum.repos.d/go-repo.repo
yum -y install golang
#
## Install PowerShell
# Register the Microsoft RedHat repository
curl https://packages.microsoft.com/config/rhel/7/prod.repo | sudo tee /etc/yum.repos.d/microsoft.repo
yum install -y powershell


# Rakudo
# https://cloudsmith.io/~nxadm-pkgs/repos/rakudo-pkg/setup/#formats-rpm
# https://awesomeopensource.com/project/nxadm/rakudo-pkg
# curl -1sLf 'https://dl.cloudsmith.io/public/nxadm-pkgs/rakudo-pkg/setup.rpm.sh' | bash
# yum -y install rakudo-pkg
# exec bash
# # # Install RakuBrew https://rakubrew.org/?platform=linux
# curl https://rakubrew.org/install-on-perl.sh | bash
# echo 'eval "$(/usr/bin/rakubrew init Bash)"' >> ~/.bashrc
# exec bash
# rakubrew self-upgrade
# #  Zef Raku / Perl6 Module Management mhttps://github.com/ugexe/zef
# rakubrew build-zef
# echo 'PATH=$PATH:/opt/rakudo-pkg/share/perl6/site/bin' >> ~/.bashrc
# source ~/.bashrc

# Update VIM
# sudo curl -L https://copr.fedorainfracloud.org/coprs/hnakamur/vim/repo/epel-7/hnakamur-vim-epel-7.repo -o /etc/yum.repos.d/hnakamur-vim-epel-7.repo
# yum-config-manager --add-repo https://copr.fedorainfracloud.org/coprs/hnakamur/vim/repo/epel-7/hnakamur-vim-epel-7.repo
# echo 'protect=0' >> /etc/yum.repos.d/hnakamur-vim-epel-7.repo
# echo 'priority=1' >> /etc/yum.repos.d/hnakamur-vim-epel-7.repo
# Add Setting to Midnight Commander
#  From endpoint Repo
# wget https://packages.endpoint.com/endpoint-rpmsign-7.pub
# rpm --import endpoint-rpmsign-7.pub
# rpm -qi gpg-pubkey-703df089 | gpg --with-fingerprint
# yum -y install https://packages.endpoint.com/rhel/7/os/x86_64/endpoint-repo-1.9-1.x86_64.rpm
# rm -rf endpoint-rpmsign-7.pub
# echo 'priority=1' >> /etc/yum.repos.d/endpoint.repo
#
# PHP
# https://blog.remirepo.net/post/2021/07/01/PHP-version-7.3.29-7.4.21-and-8.0.8
#
# Vim for Raku https://github.com/Raku/vim-raku
# https://github.com/Raku/vim-raku
#
# yum clean all
## Install Vim
# cd ~
# git clone https://github.com/vim/vim.git
# cd vim
# curl -L https://copr.fedorainfracloud.org/coprs/mrsipan/vim8/repo/epel-7/mrsipan-vim8-epel-7.repo -o /etc/yum.repos.d/mrsipan-vim8-epel-7.repo
yum -y update
