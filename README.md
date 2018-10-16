# aidjek_infra
aidjek Infra repository

Для решения самостоятельного задания нужно сделать следующее:

создать отдельный ~/.ssh/config, например такой (все действия выполнялись в MacOS)

```cat /Users/aidjek/.ssh/config.devops.otus
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
  IdentityFile /Users/aidjek/.ssh/evgheni.antropov@devops.otus```

Здесь описаны правила подключения к определённому хосту и ко всем другим. Прописан сквозной forwarding ключей и локальный проброс SSH порта через bastion хост


