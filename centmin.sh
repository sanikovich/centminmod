#!/bin/bash
# Установка часового пояса
timedatectl set-timezone Europe/Moscow
# Если выдается ошибка
# Error unpacking rpm package initscripts-9.49.53-1.el7_9.1.x86_64
chattr -Vi /usr/lib/udev/rules.d/60-net.rules
yum -y upgrade
# create initial persistent config file to override centmin.sh defaults
# https://centminmod.com/upgrade.html#persistent
mkdir -p /etc/centminmod
wget https://raw.githubusercontent.com/sanikovich/centminmod/main/custom_config.inc -O /etc/centminmod/custom_config.inc

# For latest 130.00beta01 install
# PHP 8.1.x default beta installer.
# yum -y update; curl -O https://centminmod.com/betainstaller81.sh && chmod 0700 betainstaller81.sh && bash betainstaller81.sh
yum -y update; curl -O https://centminmod.com/betainstaller.sh && chmod 0700 betainstaller.sh && bash betainstaller.sh

# pre-create Nginx HTTPS site’s dhparam file before hand to speed up subsequent Nginx vhost creation routines. On slow systems, this command will take a few minutes to complete.
openssl dhparam -out /usr/local/nginx/conf/ssl/dhparam.pem 2048

# setup extended CSF Firewall blocklists https://community.centminmod.com/posts/50060/
/usr/local/src/centminmod/tools/csf-advancetweaks.sh

# enable CSF Firewall native fail2ban like support
# https://community.centminmod.com/posts/62343/
csf --profile backup backup-b4-customregex
cp -a /usr/local/csf/bin/regex.custom.pm /usr/local/csf/bin/regex.custom.pm.bak
egrep 'CUSTOM1_LOG|CUSTOM2_LOG|CUSTOM3_LOG|CUSTOM4_LOG' /etc/csf/csf.conf
sed -i "s|CUSTOM1_LOG = .*|CUSTOM1_LOG = \"/home/nginx/domains/\*/log/access.log\"|" /etc/csf/csf.conf
sed -i "s|CUSTOM2_LOG = .*|CUSTOM2_LOG = \"/home/nginx/domains/\*/log/error.log\"|" /etc/csf/csf.conf
sed -i "s|CUSTOM3_LOG = .*|CUSTOM3_LOG = \"/var/log/nginx/localhost.access.log\"|" /etc/csf/csf.conf
sed -i "s|CUSTOM4_LOG = .*|CUSTOM4_LOG = \"/var/log/nginx/localhost.error.log\"|" /etc/csf/csf.conf
egrep 'CUSTOM1_LOG|CUSTOM2_LOG|CUSTOM3_LOG|CUSTOM4_LOG' /etc/csf/csf.conf
wget -O /usr/local/csf/bin/regex.custom.pm https://gist.github.com/centminmod/f5551b92b8aba768c3b4db84c57e756d/raw/regex.custom.pm
csf -ra

# cloudflare cronjob
# https://community.centminmod.com/threads/6241/
crontab -l > cronjoblist
sed -i '/csfcf.sh/d' cronjoblist
echo "23 */12 * * * /usr/local/src/centminmod/tools/csfcf.sh auto >/dev/null 2>&1" >> cronjoblist
crontab cronjoblist


# MALDET
wget https://raw.githubusercontent.com/sanikovich/centminmod/main/maldet.sh -O /usr/local/src/centminmod/addons/maldet.sh
/usr/local/src/centminmod/addons/maldet.sh

cd /usr/local/src/centminmod/addons/; ./customcurl.sh
yum update -y --enablerepo=city-fan.org --disableplugin=priorities
package-cleanup -y --oldkernels --count=1

# 
# wget -4 https://github.com/tippexs/nginx-njs-waf-cve2021-44228/raw/main/cve.js -O /usr/local/nginx/conf/cve.js
# js_import cve from /usr/local/nginx/conf/cve.js;
# js_set $isJNDI cve.inspect;

echo "<<< ГОТОВО >>>"
