#! /bash/bin
#Adição de novos usuários
useradd carlos -s /bin/bash -m -p $(openssl -1 12345)
useradd maria -s /bin/bash -m -p $(openssl -1 12345)
useradd joao -s /bin/bash -m -p $(openssl -1 12345)
useradd debora -s /bin/bash -m -p $(openssl -1 12345)
useradd sebastiana -s /bin/bash -m -p $(openssl -1 12345)
useradd roberto -s /bin/bash -m -p $(openssl -1 12345)
useradd josefina -s /bin/bash -m -p $(openssl -1 12345)
useradd amanda -s /bin/bash -m -p $(openssl -1 12345)
useradd rogerio -s /bin/bash -m -p $(openssl -1 12345)
#Criação de novos grupos
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
#Criação de novos diretórios
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec
#Atribuição dos usuários aos seus grupos
usermod -G GRP_ADM carlos
usermod -G GRP_ADM maria
usermod -G GRP_ADM joao
usermod -G GRP_SEC josefina
usermod -G GRP_SEC amanda
usermod -G GRP_SEC rogerio
usermod -G GRP_VEN debora
usermod -G GRP_VEN sebastiana
usermod -G GRP_VEN roberto
#Atribuição dos diretórios aos seus grupos
chown root /publico
chown root:GRP_ADM /adm
chown root:GRP_SEC /sec
chown root:GRP_VEN /ven
#Alteração nas permissões dos diretórios
chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
