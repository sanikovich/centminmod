## Centminmod  Config by Victor Sanikovich (@sanikovich) 2022-06-30
## THe original one
## https://github.com/centminmod/centminmod/blob/master/centmin.sh

DISKALERTEXCLUDE_LIST='snapd'
VHOSTCTRL_CLOUDFLAREINC='y'     # при создании vhost включаем файл cloudflare.conf
VHOSTCTRL_AUTOPROTECTINC='y'    # при создании vhost включаем файл autoprotect-vhostname.conf
CLOUDFLARE_ZLIB='y'             # используйте оптимизированный для Cloudflare форк zlib https://blog.cloudflare.com/cloudflare-fights-cancer/

ENABLEMOTD_CSFMSG='n'           # Отключаем motd баннер и отображение сообщений фаервола csf
ENABLEMOTD_LINKSMSG='n'         # Отключаем motd отображение ссылок на centminmod.com
DISABLE_IPVSIX='y'              # отключить поддержку IPv6 в системе

AUTOTUNE_CLIENTMAXBODY='y'      # автоматическая настройка параметра client_max_body_size в nginx.conf

## FOR PHP 7.4+
#FPM_WAKEUP_PATCH='y'            # Включаем патч для пробуждения событий PHP-FPM

AUTODETECPHP_OVERRIDE='y'       # Включаем обновление PHP при котором всегда будет переустанавливать все расширения php, даже если версия php незначительная

##For Linux Kernel  > 5.1.x
# COMMENTED OUT - REQUIRES CENTOS KERNEL 5.1 or ABOVE - CHECK VERSION FIRST WITH uname -r
# CARE WHEN UPGRADING KERNEL - BEST NOT TO DO ON A LIVE SERVER
# SEE https://community.centminmod.com/threads/add-nginx_iouring_patch-variable-support-in-123-09beta01.18075/#post-76552
NGINX_IOURING_PATCH_BETA='y'    # включение функциональности потоков aio, только если обновлено ядро до 5.1+

# Nginx settings
##  Обновление NGINX. Отключить, если пользовательские конфигурации
NGINX_ALLOWOVERRIDE='y'         # разрешить моду centmin обновлять настройки nginx.conf по умолчанию, когда эти настройки пересматриваются
NGINXCPU_AUTOTUNE_NEW='y'
NGINX_DYNAMICTLS='y'            # Включаем перекомпилирование nginx https://blog.cloudflare.com/optimizing-tls-over-tcp-to-reduce-latency/

# dynamically tune nginx ssl_session_cache in /usr/local/nginx/conf/ssl_include.conf based on system detected memory
# https://community.centminmod.com/posts/76615/
NGINX_SSLCACHE_ALLOWOVERRIDE='y'     # Включаем динамическую настройку nginx ssl_session_cache в /usr/local/nginx/conf/ssl_include.conf на основе обнаруженной системой памяти

# автоматическое включение модуля brotli nginx при наличии Intel Skylake или более новых процессоров
# более новые процессоры позволяют быстрее обслуживать сжатые файлы nginx с помощью brotli
# https://community.centminmod.com/posts/70527/
NGINX_BROTLIDEP_UPDATE='y'

# enable brotli compression https://community.centminmod.com/threads/10688/
NGINX_LIBBROTLI='y'
NGXDYNAMIC_BROTLI='y'

# enable nginx backlog override https://community.centminmod.com/threads/17620/
AUTOHARDTUNE_NGINXBACKLOG='y'

# NGINX_VERSION='1.24.1'

#replace older PCRE2 8.x library with 10.x library
#https://community.centminmod.com/threads/centmin-mod-nginx-1-21-5-pcre2-beta-testing.22326/#post-91354
NGINX_PCRE_TWO='y'

# https://community.centminmod.com/threads/official-mariadb-10-3-yum-repo-eol-may-25-2023.23756/#post-96142
MARIADB_INSTALLTENTHREE='n'
MARIADB_INSTALLTENFOUR='n'
MARIADB_INSTALLTENFIVE='n'
MARIADB_INSTALLTENSIX='y'          # Установка MariaDB 10.4 YUM по умолчанию, если установлено значение yes

ENABLE_MARIADBTENFOURUPGRADE='y'
ENABLE_MARIADBTENFIVEUPGRADE='y'
ENABLE_MARIADBTENSIXUPGRADE='y'


# default characterset and collation from default utf8 to utf8mb4
# https://community.centminmod.com/threads/17949/
SET_DEFAULT_MYSQLCHARSET='utf8mb4'  # Установка по умолчанию кодировки для MariaDB

# enable letsencrypt ssl certificate + dual RSA+ECDSA ssl certs https://centminmod.com/acmetool/
# https://community.centminmod.com/threads/official-acmetool-sh-testing-thread-for-centmin-mod-123-09beta01.8290/
LETSENCRYPT_DETECT='y'      # Включаем интеграцию addons/acmetool.sh
DUALCERTS='y'               # Включаем поддержку двойного сертификата на домен

# https://gcc.gnu.org/onlinedocs/gcc/Optimize-Options.html
NGINX_HPACK='y'             # Отключаем флаг (-flag) оптимизаци для Nginx
GCC_FALIGN_FUNCTION='y'     # Устанавливаем set -falign-functions=32 for GCC compiles of Nginx and PHP-FPM and pigz

# LibreSSL
LIBRESSL_SWITCH='n'         # если 'y', то отключаем OpenSSL опцию статической компиляции по умолчанию для сервера Nginx

# Enable VHost Stats
# see https://community.centminmod.com/threads/add-ngxdynamic_vhoststats-option-support-for-nginx-module-vts-module.12913/#post-54842
#NGINX_VHOSTSTATS=y

#Enable Max Mind GeoIP
#see https://community.centminmod.com/threads/how-to-enable-geoip-2-lite-nginx-module-support.17165/
#MM_LICENSE_KEY='xxxxxxxxxxxxx'
#NGINX_GEOIPTWOLITE='y'
#NGXDYNAMIC_GEOIPTWOLITE='y'

#Cloudflare SSL Options
#https://centminmod.com/letsencrypt-freessl.html#dns
#CF_DNSAPI_GLOBAL='y'
#CF_Token="xxxxxxxxxVExxxxxxxx_Gn"
#CF_Account_ID="xxxxxxxxx2xxxxxx2"

# The second phase can be time-consuming if your build output is large. mold can speed up this process,
# saving you time and preventing distractions while waiting for a lengthy build to finish.
# The difference is most noticeable during rapid debug-edit-rebuild cycles.
# https://community.centminmod.com/threads/please-give-us-some-info-about-these-2-new-el8-variables.23846/#post-96376
NGX_LDMOLD='y'
PHP_LDMOLD='y'

# экспериментальное использование подпрограмм для загрузки некоторых
# tarballs параллельно для ускорения начальной установки
PARALLEL_MODE='y'
# связанные с компилятором
CLANG='n'                   # Nginx and LibreSSL
DEVTOOLSETTEN='n'           # Включаем devtoolset-10 GCC 10
DEVTOOLSETELEVEN='n'        # Включаем devtoolset-11 GCC 11
DEVTOOLSETTWELVE='y'        # Включаем devtoolset-12 GCC 12
NGINX_DEVTOOLSETGCC='y'     # Используйте последнюю версию devtoolset даже для компиляции nginx в CentOS 7
GENERAL_DEVTOOLSETGCC='y'   # Используйте последний devtoolset везде, где это возможно
CRYPTO_DEVTOOLSETGCC='y'    # Используйте последний devtoolset для компиляции libressl или openssl

# MARCH_TARGETNATIVE='n' (which is usually the default set for Upcloud and Digitalocean, Vultr, Linode due to this very
# issue of possible cpu changes) in persistent config file and recompiling nginx, php-fpm and other PHP extensions from centmin.sh menu option 4, 5, and 10
MARCH_TARGETNATIVE_ALWAYS='y'   # force native compiler to override smarter vps detection routine

# PHP PGO settings

# PHP versions - https://www.php.net/downloads.php
# https://community.centminmod.com/threads/php-8-0-0-ga-stable-release.20739/#post-87309
#PHP_VERSION='8.1.7'

# boost PHP 7 performance by enabling Profile Guided Optimisation flag
# https://centminmod.com/perf/
# will dramatically increase PHP-FPM compile/install times but result in
# 5-20% faster PHP 7+ performance. PHP_PGO='y' only works with servers with
# 2+ or more cpu threads. However, you can force PHP PGO optimisations with
# 1 cpu thread servers via PHP_PGO_ALWAYS='y'
#PHP_PGO_ALWAYS='y'         # переопределение для PHP_PGO для серверов с 1 вычислительным процессором и потоком
#PHP_PGO='y'                # Profile Guided Optimization https://software.intel.com/en-us/blogs/2015/10/09/pgo-let-it-go-php
#PHPPGO_INDEXPATH='/home/nginx/domains/XX/public/index.php'
#PHPPGO_INDEXPATH_TWO='/home/nginx/domains/XX/public/index.php'

# включить с помощью CUSTOM_CURLRPM='y'
# используйте на свой страх и риск, так как это может сломать систему
# информация на https://mirror.city-fan.org/ftp/contrib/sysutils/Mirroring/
# https://community.centminmod.com/threads/update-addons-customcurl-sh-custom_curlrpm-y-routine-in-123-09beta01.17503/
CUSTOM_CURLRPM='y'
CUSTOM_CURLRPMVER='8.1.2'       # пользовательская версия curl/libcurl

#PHPPGO_INDEXPATH='/home/nginx/domains/XX/public/index.php'
#PHPPGO_INDEXPATH_TWO='/home/nginx/domains/XX/public/index.php'

# php compression extensions https://community.centminmod.com/posts/70777/
PHP_TUNING='y'              # первоначальная установка php-fpm автоматическая настройка
PHP_BROTLI='y'              # brotli php extension https://github.com/kjdev/php-ext-brotli
PHP_LZFOUR='y'              # lz4 php extension https://github.com/kjdev/php-ext-lz4
PHP_LZF='y'                 # lzf php extension https://github.com/php/pecl-file_formats-lzf php-ext-lzf
PHP_ZSTD='y'                # zstd php extension https://github.com/kjdev/php-ext-zstd

# PHP version checks
# https://community.centminmod.com/threads/add-optional-php-version-check-in-123-09beta01.19334/
DMOTD_PHPCHECK='y'          # enable PHP latest version check on SSH logins MOTD

# enable zstd compressed logrotation for nginx & php-fpm https://community.centminmod.com/threads/16374/
ZSTD_LOGROTATE_NGINX='y'    # initial install only for zstd compressed log rotation community.centminmod.com/threads/16371/
ZSTD_LOGROTATE_PHPFPM='y'   # initial install only for zstd compressed log rotation community.centminmod.com/threads/16371/

# enable ECC 256bit ECDSA self-signed SSL certificate generation https://community.centminmod.com/posts/82177/
SELFSIGNEDSSL_ECDSA='y'


# COMMENTED OUT DEFAULT - enable nginx zero downtime on the fly nginx binary upgrades https://community.centminmod.com/threads/8000/
# NGINX_ZERODT='y'

PHPINFO='y'                # Disable or Enable PHP File Info extension
WP_FASTCGI_CACHE='y'
PHP_MEMCACHE='n'            # memcached PHP extension
PHP_MEMCACHED='n'           # memcached PHP extension
# Redis
# PHPREDIS='y'                # redis PHP extension install
# REDIS_SERVER_INSTALL='y'

# Enable Rclone and Dropbox to enable sharing Logs
#https://community.centminmod.com/threads/centmin-mod-nginx-1-21-5-pcre2-beta-testing.22326/#post-91386
# RCLONE_ENABLE='y'
# DROPBOX_SEND='y'

# set = y to put nginx, php and mariadb major version updates into 503
# maintenance mode https://community.centminmod.com/posts/26485/
NGINX_UPDATEMAINTENANCE='y'
PHP_UPDATEMAINTENANCE='y'
MARIADB_UPDATEMAINTENANCE='y'

# remove TLSv1.0 and TLSv1.1 and leave only TLSv1.2 or TLSv1.2 + TLSv1.3 (when using OpenSSL 1.1.1 or BoringsSSL)
# https://community.centminmod.com/threads/add-ssl_protocol_modern-variable-in-123-09beta01.19715/
SSL_PROTOCOL_MODERN='y'

#NGINX_MODSECURITY_MAXMIND='y'  # modsecurity built with libmaxminddb is failing to compile so disable it in favour of GeoIP legacy
NGINX_MODSECURITY='y'          # modsecurity module support https://github.com/SpiderLabs/ModSecurity/wiki/Reference-Manual#Installation_for_NGINX

# override Nginx default OCSP response cache refresh time 1h (3600 seconds) to 24hrs (86400 seconds)
# https://community.centminmod.com/threads/19515/
NGINX_STAPLE_CACHE_OVERRIDE='n' # Включение отменяет время обновления кэша Nginx OCSP сшивки 3600 секунд
NGINX_STAPLE_CACHE_TTL='86400'  # Время обновления кэша Nginx OCSP сшивки в секундах override default 3600

# Countless Servers Are Vulnerable to Apache Log4j Zero-Day Exploit (Log4Shell)
# https://community.centminmod.com/threads/countless-servers-are-vulnerable-to-apache-log4j-zero-day-exploit-log4shell.22254/page-4#post-91062
# NGINX_NJS='y'                # nginScript https://www.nginx.com/blog/launching-nginscript-and-looking-ahead/
# NGXDYNAMIC_NJS='y'
# NGINX_ONETWOTHREE_COMPAT='y'  # Для установки nginx 1.23.0 указываем Y
###############################################################
# centmin.sh menu option 22 specific options
WPPLUGINS_ALL='n'               # не устанавливать дополнительные плагины к WP

# enable centmin.sh menu option 22 WordPress Cache Enabler Query String inclusions
# https://community.centminmod.com/posts/85927/
WPCLI_CE_QUERYSTRING_INCLUDED='n' # https://community.centminmod.com/posts/85893/

WPCLI_SUPERCACHEPLUGIN='n'  # https://community.centminmod.com/threads/5102/
# choose Cache Enabler 1.4.9 cache query string inclusion set to 'y'
# choose Cache Enabler 1.5.1 cache query string exclusion set to 'n'
CACHE_ENABLER_LEGACY_CACHE='y'

#  add optional tcp_bbr_setup function for el8+ in 130.00beta01
# https://community.centminmod.com/threads/add-optional-tcp_bbr_setup-function-for-el8-in-130-00beta01.23286/#post-94526
# TCP_BBR_ENABLE='y'

###############################################################
# Maxmind GeoLite2 database API Key
# https://community.centminmod.com/posts/80656/
# You can override this API key with your own Maxmind
# account API key by setting MM_LICENSE_KEY variable
# in persistent config file /etc/centminmod/custom_config.inc
# - Add MM_CSF_SRC='y' default variable to force CSF Firewall to use CC_SRC = "1"
# for maxmind geolite2 database source instead of db-ip database.
# Related to https://community.centminmod.com/threads/update-csf-firewall-maxmind-geolite2-routine-in-123-09beta01.19046/
# - If you want to set CC_SRC = "2" to use db-ip database in CSF Firewall /etc/csf/csf.conf,
# just set MM_CSF_SRC='n' no persistent config file /etc/centminmod/custom_config.inc and run and exit centmin.sh once
# - Add a check so that if CC_SRC = "1" already set, no need to run routine.
# MM_LICENSE_KEY='hLYUAcgJtgBg0TZ0'
# MM_CSF_SRC='y'

###############################################################
# When set to ='y'will disable those listed installed services
# by default. The service is still installed but disabled
# by default and can be re-enabled with commands:
# service servicename start; chkconfig servicename on
# From https://centminmod.com/faq.html Question #25
# MEMCACHED_INSTALL='y'         # Install Memcached
# MEMCACHED_DISABLED='n'        # when set to ='y' Memcached server disabled by default via chkconfig off
# NSD_INSTALL='y'
# NSD_DISABLED='n'              # when set to ='y'NSD disabled by default with chkconfig off
