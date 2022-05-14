## Centminmod  Config by Victor Sanikovich (@sanikovich) 2021-06-30
## THe original one b
## https://github.com/centminmod/centminmod/blob/master/centmin.sh

EMAIL='x2600@mail.ru'           # Адрес электронной почты для уведомления сервера введите только 1 адрес

VHOSTCTRL_CLOUDFLAREINC='y'     # при создании vhost включаем файл cloudflare.conf
VHOSTCTRL_AUTOPROTECTINC='y'    # при создании vhost включаем файл autoprotect-vhostname.conf
CLOUDFLARE_ZLIB='y'             # используйте оптимизированный для Cloudflare форк zlib https://blog.cloudflare.com/cloudflare-fights-cancer/

ENABLEMOTD_CSFMSG='n'           # Отображать motd баннер и  сообщения фаервола csf
ENABLEMOTD_LINKSMSG='n'         # Отключаем motd отображение ссылок на centminmod.com
DISABLE_IPVSIX='y'              # отключить поддержку IPv6 в системе

AUTOTUNE_CLIENTMAXBODY='y'      # автоматическая настройка параметра client_max_body_size в nginx.conf

## FOR PHP 7.4+
FPM_WAKEUP_PATCH='y'            # Включаем патч для пробуждения событий PHP-FPM

AUTODETECPHP_OVERRIDE='y'       # Включаем обновление PHP при котором всегда будет переустанавливать все расширения php, даже если версия php незначительная

##For Linux Kernel  > 5.1.x
NGINX_IOURING_PATCH_BETA='y'    # включение функциональности потоков aio, только если обновлено ядро до 5.1+

##  Обновление NGINX. Отключить, если пользовательские конфигурации
NGINX_ALLOWOVERRIDE='y'         # разрешить моду centmin обновлять настройки nginx.conf по умолчанию, когда эти настройки пересматриваются

NGINX_DYNAMICTLS='y'            # Включаем перекомпилирование nginx https://blog.cloudflare.com/optimizing-tls-over-tcp-to-reduce-latency/
NGINX_SSLCACHE_ALLOWOVERRIDE='y'     # Включаем динамическую настройку nginx ssl_session_cache в /usr/local/nginx/conf/ssl_include.conf на основе обнаруженной системой памяти

# автоматическое включение модуля brotli nginx при наличии Intel Skylake или более новых процессоров
# более новые процессоры позволяют быстрее обслуживать сжатые файлы nginx с помощью brotli
# https://community.centminmod.com/posts/70527/
NGXDYNAMIC_BROTLI='y'
NGINX_LIBBROTLI='y'
AUTOHARDTUNE_NGINXBACKLOG='y'

MARIADB_INSTALLTENFOUR='y'          # Установка MariaDB 10.4 YUM по умолчанию, если установлено значение yes
SET_DEFAULT_MYSQLCHARSET='utf8mb4'  # Установка по умолчанию кодировки для MariaDB

LETSENCRYPT_DETECT='y'      # Включаем интеграцию addons/acmetool.sh
DUALCERTS='y'               # Включаем поддержку двойного сертификата на домен

# https://gcc.gnu.org/onlinedocs/gcc/Optimize-Options.html
NGINX_HPACK='y'             # Отключаем флаг (-flag) оптимизаци для Nginx
GCC_FALIGN_FUNCTION='y'     # Устанавливаем set -falign-functions=32 for GCC compiles of Nginx and PHP-FPM and pigz

# LibreSSL
LIBRESSL_SWITCH='n'         # если 'y', то отключаем OpenSSL опцию статической компиляции по умолчанию для сервера Nginx


# экспериментальное использование подпрограмм для загрузки некоторых
# tarballs параллельно для ускорения начальной установки
PARALLEL_MODE='y'
# связанные с компилятором
CLANG='n'                   # Nginx and LibreSSL
DEVTOOLSETSIX='n'           # Отключаем devtoolset-6 GCC 6.2
DEVTOOLSETSEVEN='n'         # Отключаем devtoolset-7 GCC 7.1
DEVTOOLSETEIGHT='n'         # Отключаем devtoolset-8 GCC 8.1
DEVTOOLSETNINE='n'          # Включаем devtoolset-9 GCC 9.1
DEVTOOLSETTEN='n'           # Включаем devtoolset-10 GCC 10
DEVTOOLSETELEVEN='y'        # Включаем devtoolset-11 GCC 11
NGINX_DEVTOOLSETGCC='y'     # Используйте последнюю версию devtoolset даже для компиляции nginx в CentOS 7
GENERAL_DEVTOOLSETGCC='y'   # Используйте последний devtoolset везде, где это возможно
CRYPTO_DEVTOOLSETGCC='y'    # Используйте последний devtoolset для компиляции libressl или openssl

# MARCH_TARGETNATIVE='n' (which is usually the default set for Upcloud and Digitalocean, Vultr, Linode due to this very
# issue of possible cpu changes) in persistent config file and recompiling nginx, php-fpm and other PHP extensions from centmin.sh menu option 4, 5, and 10
MARCH_TARGETNATIVE_ALWAYS='y'   # force native compiler to override smarter vps detection routine
#PHP_PGO='y'                # Profile Guided Optimization https://software.intel.com/en-us/blogs/2015/10/09/pgo-let-it-go-php
#PHP_PGO_ALWAYS='y'         # переопределение для PHP_PGO для серверов с 1 вычислительным процессором и потоком


# включить с помощью CUSTOM_CURLRPM='y'
# используйте на свой страх и риск, так как это может сломать систему
# информация на https://mirror.city-fan.org/ftp/contrib/sysutils/Mirroring/
CUSTOM_CURLRPM='y'
CUSTOM_CURLRPMVER='7.81.0'       # пользовательская версия curl/libcurl



#PHPPGO_INDEXPATH='/home/nginx/domains/XX/public/index.php'
#PHPPGO_INDEXPATH_TWO='/home/nginx/domains/XX/public/index.php'

PHP_TUNING='y'              # первоначальная установка php-fpm автоматическая настройка

PHP_BROTLI='y'              # brotli php extension https://github.com/kjdev/php-ext-brotli
PHP_LZFOUR='y'              # lz4 php extension https://github.com/kjdev/php-ext-lz4
PHP_LZF='y'                 # lzf php extension https://github.com/php/pecl-file_formats-lzf php-ext-lzf
PHP_ZSTD='y'                # zstd php extension https://github.com/kjdev/php-ext-zstd


ZSTD_LOGROTATE_NGINX='y'    # initial install only for zstd compressed log rotation community.centminmod.com/threads/16371/
ZSTD_LOGROTATE_PHPFPM='y'   # initial install only for zstd compressed log rotation community.centminmod.com/threads/16371/


PHPFINFO='y'                # Disable or Enable PHP File Info extension
WP_FASTCGI_CACHE='y'

# set = y to put nginx, php and mariadb major version updates into 503
# maintenance mode https://community.centminmod.com/posts/26485/
NGINX_UPDATEMAINTENANCE='y'
PHP_UPDATEMAINTENANCE='y'
MARIADB_UPDATEMAINTENANCE='y'

# remove TLSv1.0 and TLSv1.1 and leave only TLSv1.2 or TLSv1.2 + TLSv1.3 (when using OpenSSL 1.1.1 or BoringsSSL)
# https://community.centminmod.com/threads/add-ssl_protocol_modern-variable-in-123-09beta01.19715/
SSL_PROTOCOL_MODERN='y' #

#NGINX_MODSECURITY_MAXMIND='y'  # modsecurity built with libmaxminddb is failing to compile so disable it in favour of GeoIP legacy
NGINX_MODSECURITY='y'          # modsecurity module support https://github.com/SpiderLabs/ModSecurity/wiki/Reference-Manual#Installation_for_NGINX


NGINX_STAPLE_CACHE_OVERRIDE='y' # Включение отменяет время обновления кэша Nginx OCSP сшивки 3600 секунд
NGINX_STAPLE_CACHE_TTL='86400'  # Время обновления кэша Nginx OCSP сшивки в секундах override default 3600
# Countless Servers Are Vulnerable to Apache Log4j Zero-Day Exploit (Log4Shell)
# https://community.centminmod.com/threads/countless-servers-are-vulnerable-to-apache-log4j-zero-day-exploit-log4shell.22254/page-4#post-91062
NGINX_NJS='y'                # nginScript https://www.nginx.com/blog/launching-nginscript-and-looking-ahead/
NGXDYNAMIC_NJS='y'

###############################################################
# centmin.sh menu option 22 specific options
WPPLUGINS_ALL='n'               # не устанавливать дополнительные плагины к WP
WPCLI_CE_QUERYSTRING_INCLUDED='y' # https://community.centminmod.com/posts/85893/
WPCLI_SUPERCACHEPLUGIN='n'  # https://community.centminmod.com/threads/5102/
# choose Cache Enabler 1.4.9 cache query string inclusion set to 'y'
# choose Cache Enabler 1.5.1 cache query string exclusion set to 'n'
CACHE_ENABLER_LEGACY_CACHE='y'
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
MM_LICENSE_KEY='hLYUAcgJtgBg0TZ0'
MM_CSF_SRC='y'
###############################################################
# When set to ='y'will disable those listed installed services
# by default. The service is still installed but disabled
# by default and can be re-enabled with commands:
# service servicename start; chkconfig servicename on
# From https://centminmod.com/faq.html Question #25
MEMCACHED_INSTALL='y'         # Install Memcached
MEMCACHED_DISABLED='n'        # when set to ='y' Memcached server disabled by default via chkconfig off
NSD_INSTALL='y'
NSD_DISABLED='n'              # when set to ='y'NSD disabled by default with chkconfig off
