# Modified CENTMIN MOD LEMP WEB STACK by George Liu (eva2000).
## Low Budget VPS control panel
---

### 1. Upgrade Centos 7 Kernel to ELRepo Kernel-ml for Enterprise Linux 7 and 8

```
yum -y install wget yum-utils; yum -y upgrade; wget https://raw.githubusercontent.com/sanikovich/centminmod/main/kernel5.sh; chmod +x kernel5.sh; ./kernel5.sh
```
