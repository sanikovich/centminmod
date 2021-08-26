# Modified CENTMIN MOD LEMP WEB STACK by George Liu (eva2000).
## Low Budget VPS control panel
---

### 1. Upgrade Centos 7 Kernel to ELRepo Kernel-ml for Enterprise Linux 7 and 8
```
yum -y install wget yum-utils; yum -y upgrade; wget https://raw.githubusercontent.com/sanikovich/centminmod/main/kernel5.sh; chmod +x kernel5.sh; ./kernel5.sh
```

### 2. Centminmod Installation
```
wget https://raw.githubusercontent.com/sanikovich/centminmod/main/centmin.sh; chmod +x centmin.sh; ./centmin.sh
```

### 3. Install some add-ons and updates
```
wget https://raw.githubusercontent.com/sanikovich/centminmod/main/updates.sh; chmod +x updates.sh; ./updates.sh
```

### 4. Update some system utils
```
wget https://raw.githubusercontent.com/sanikovich/centminmod/main/install-addons.sh; chmod +x install-addons.sh; ./install-addons.sh
```


# Reference
1. [Tino Fotiou @tinof](https://github.com/tinof/centmininit)
1. [Centminmod Official Forum](https://community.centminmod.com/threads/discussion-how-do-you-initially-install-setup-your-centmin-mod-server.14736/page-3)
1. [Centminmod Github Page](https://github.com/centminmod/centminmod/blob/master/centmin.sh)
