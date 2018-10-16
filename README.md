# aidjek_infra
aidjek Infra repository

HomeWork #3

bastion_IP = 35.204.164.162
someinternalhost_IP = 10.156.0.3

Для решения самостоятельного задания нужно сделать следующее:

создать отдельный ~/.ssh/config, например такой (все действия выполнялись в MacOS)

```
cat /Users/aidjek/.ssh/config.devops.otus
## ---- Local Hosts -----

Host bastion.gcp.otus
  HostName 35.204.164.162
  Port 22
  User evgheni.antropov
  LocalForward 2222 10.164.0.3:22

Host vip-host.gcp.otus
  HostName 127.0.0.1
  Port 2222
  User evgheni.antropov

## -- default for all -
Host *
  AddKeysToAgent yes
  IgnoreUnknown UseKeychain
  UseKeychain yes
  ForwardAgent yes
  User evgheni.antropov
  Port 22
  IdentityFile /Users/aidjek/.ssh/evgheni.antropov@devops.otus
```

Alias прописал в Fish Functions:
```
⋊> ~/P/O/D/g/aidjek_infra on cloud-bastion  alias ssh_devops_otus='/usr/local/bin/ssh -F /Users/aidjek/.ssh/config.devops.otus'
⋊> ~/P/O/D/g/aidjek_infra on cloud-bastion  funcsave ssh_devops_otus
⋊> ~/P/O/D/g/aidjek_infra on cloud-bastion  ssh_devops_otus bastion.gcp.otus
```

Здесь описаны правила подключения к определённому хосту и ко всем другим. Прописан сквозной forwarding ключей и локальный проброс SSH порта через bastion хост

```
⋊> ~/P/O/D/g/aidjek_infra on cloud-bastion ⨯ lsof -i:2222                                                                                  23:40:43
COMMAND   PID   USER   FD   TYPE             DEVICE SIZE/OFF NODE NAME
ssh     21662 aidjek    6u  IPv6 0xc95648f739b6490b      0t0  TCP localhost:rockwell-csp2 (LISTEN)
ssh     21662 aidjek    7u  IPv4 0xc95648f762d4364b      0t0  TCP localhost:rockwell-csp2 (LISTEN)
⋊> ~/P/O/D/g/aidjek_infra on cloud-bastion ⨯ ssh_devops_otus vip-host.gcp.otus
Welcome to Ubuntu 16.04.5 LTS (GNU/Linux 4.15.0-1021-gcp x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

  Get cloud support with Ubuntu Advantage Cloud Guest:
    http://www.ubuntu.com/business/services/cloud

0 packages can be updated.
0 updates are security updates.


Last login: Tue Oct 16 20:40:36 2018 from 10.164.0.2
evgheni.antropov@vip-host:~$ logout
Connection to 127.0.0.1 closed.
```

VPN поднят на bastion хосте. Подключиться к VPN можно используя файл конфигурации из репозитория. 
SSL сертификат от Let's Encrypt установлен: https://35.204.164.162.sslip.io/
